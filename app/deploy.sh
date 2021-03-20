#!/bin/zsh

if [ "$1" = "" ]; then
    echo '⚠️  Target Platform missing'
    echo 'Usage for native builds:'
    echo '\t source deploy.sh [PLATFORM] [VERSION_NUMBER] [VERSION_CODE] (OPTIONALLY) --[TARGET]'
    echo 'Example:'
    echo '\t source deploy.sh mobile 1.0.0 10 --dev'

    echo ''

    echo 'Usage for web builds:'
    echo '\t source deploy.sh [PLATFORM]'
    echo 'Example:'
    echo '\t source deploy.sh web'
    return
fi

if [ "$1" != "web" ] && [ "$1" != "all" ]; then
    if [ "$2" = "" ]; then
        echo '⚠️  App version number missing'
        echo 'Usage:'
        echo '\t source deploy.sh [PLATFORM] [VERSION_NUMBER] [VERSION_CODE] (OPTIONALLY) --[TARGET]'
        echo 'Example:'
        echo '\t source deploy.sh '$1' 1.0.0 10 --dev'
        return
    else
        if [ "$3" = "" ]; then
            echo '⚠️  App version code missing'
            echo 'Usage:'
            echo '\t source deploy.sh [PLATFORM] [VERSION_NUMBER] [VERSION_CODE] (OPTIONALLY) --[TARGET]'
            echo 'Example:'
            echo '\t source deploy.sh '$1' 1.0.0 10 --dev'
            return
        fi
    fi

    target="--dev"
    if [ "$4" != "" ]; then
        target=$4
    fi

    echo '🕗 Processing Deployment for Mataku App for '$1'...'

    if [ $target = "--dev" ]; then
        if [ $1 = "mobile" ]; then
            flutter build appbundle --target-platform android-arm,android-arm64,android-x64 --release --build-name=$2 --build-number=$3
            flutter build ios --release --no-codesign --build-name=$2 --build-number=$3

            cd android/
            fastlane internal
            cd ..

            cd ios/
            fastlane beta
            cd ..
            return
        fi
        if [ $1 = "android" ]; then
            flutter build appbundle --target-platform android-arm,android-arm64,android-x64 --release --build-name=$2 --build-number=$3
            cd android/
            fastlane internal
            cd ..
            return
        else
            if [ $1 = "ios" ]; then
                flutter build ios --release --no-codesign --build-name=$2 --build-number=$3
                cd ios/
                fastlane beta
                cd ..
                return
            fi
        fi
        return
    else
        if [ $target = "--prod" ]; then
            if [ $1 = "mobile" ]; then
                flutter build appbundle --target-platform android-arm,android-arm64,android-x64 --release --build-name=$2 --build-number=$3
                flutter build ios --release --no-codesign --build-name=$2 --build-number=$3

                cd android/
                fastlane deploy
                cd ..

                cd ios/
                fastlane release
                cd ..
                return
            fi
            if [ $1 = "android" ]; then
                flutter build appbundle --target-platform android-arm,android-arm64,android-x64 --release --build-name=$2 --build-number=$3
                cd android/
                fastlane deploy
                cd ..
                return
            else
                if [ $1 = "ios" ]; then
                    flutter build ios --release --no-codesign --build-name=$2 --build-number=$3
                    cd ios/
                    fastlane release
                    cd ..
                    return
                fi
            fi
            return
        fi
    fi

    echo 'Deployment done 🚀'
else
    if [ "$1" = "web" ]; then
        echo '🕗 Processing Deployment for Mataku App for '$1'...'

        flutter build web --release

        cd build/web/

        /usr/local/bin/rsync -ru --exclude=firebase-debug.log --exclude=.firebase --exclude=functions/ --exclude=public/ --exclude=firebase.json --exclude=.gitignore --exclude=.firebaserc * ../../web/public

        cd ../../web

        firebase deploy --only hosting

        cd ..
        echo 'Deployment done 🚀'
        return
    else
        if [ "$1" = "all" ]; then
            if [ "$2" = "" ]; then
                echo '⚠️  App version number missing'
                echo 'Usage:'
                echo '\t source deploy.sh [PLATFORM] [VERSION_NUMBER] [VERSION_CODE] (OPTIONALLY) --[TARGET]'
                echo 'Example:'
                echo '\t source deploy.sh '$1' 1.0.0 10 --dev'
                return
            else
                if [ "$3" = "" ]; then
                    echo '⚠️  App version code missing'
                    echo 'Usage:'
                    echo '\t source deploy.sh [PLATFORM] [VERSION_NUMBER] [VERSION_CODE] (OPTIONALLY) --[TARGET]'
                    echo 'Example:'
                    echo '\t source deploy.sh '$1' 1.0.0 10 --dev'
                    return
                fi
            fi

            target="--dev"
            if [ "$4" != "" ]; then
                target=$4
            fi

            echo '🕗 Processing Deployment for Mataku App for '$1'...'

            flutter build web --release
            cd build/web/
            /usr/local/bin/rsync -ru --exclude=firebase-debug.log --exclude=.firebase --exclude=functions/ --exclude=public/ --exclude=firebase.json --exclude=.gitignore --exclude=.firebaserc * ../../web/public
            cd ../../web
            firebase deploy --only hosting
            cd ..

            if [ $target = "--dev" ]; then
                flutter build appbundle --target-platform android-arm,android-arm64,android-x64 --release --build-name=$2 --build-number=$3
                flutter build ios --release --no-codesign --build-name=$2 --build-number=$3

                cd android/
                fastlane internal
                cd ..

                cd ios/
                fastlane beta
                cd ..
            else
                if [ $target = "--prod" ]; then
                    flutter build appbundle --target-platform android-arm,android-arm64,android-x64 --release --build-name=$2 --build-number=$3
                    flutter build ios --release --no-codesign --build-name=$2 --build-number=$3

                    cd android/
                    fastlane deploy
                    cd ..

                    cd ios/
                    fastlane release
                    cd ..
                fi
            fi

            echo 'Deployment done 🚀'
            return
        fi
    fi
fi

if [ "$?" != "0" ]; then
    echo "Error in deployment!" 1>&2
    return
fi
