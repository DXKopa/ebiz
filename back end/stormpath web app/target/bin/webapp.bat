@REM ----------------------------------------------------------------------------
@REM Copyright 2001-2004 The Apache Software Foundation.
@REM
@REM Licensed under the Apache License, Version 2.0 (the "License");
@REM you may not use this file except in compliance with the License.
@REM You may obtain a copy of the License at
@REM
@REM      http://www.apache.org/licenses/LICENSE-2.0
@REM
@REM Unless required by applicable law or agreed to in writing, software
@REM distributed under the License is distributed on an "AS IS" BASIS,
@REM WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@REM See the License for the specific language governing permissions and
@REM limitations under the License.
@REM ----------------------------------------------------------------------------
@REM

@echo off

set ERROR_CODE=0

:init
@REM Decide how to startup depending on the version of windows

@REM -- Win98ME
if NOT "%OS%"=="Windows_NT" goto Win9xArg

@REM set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" @setlocal

@REM -- 4NT shell
if "%eval[2+2]" == "4" goto 4NTArgs

@REM -- Regular WinNT shell
set CMD_LINE_ARGS=%*
goto WinNTGetScriptDir

@REM The 4NT Shell from jp software
:4NTArgs
set CMD_LINE_ARGS=%$
goto WinNTGetScriptDir

:Win9xArg
@REM Slurp the command line arguments.  This loop allows for an unlimited number
@REM of arguments (up to the command line limit, anyway).
set CMD_LINE_ARGS=
:Win9xApp
if %1a==a goto Win9xGetScriptDir
set CMD_LINE_ARGS=%CMD_LINE_ARGS% %1
shift
goto Win9xApp

:Win9xGetScriptDir
set SAVEDIR=%CD%
%0\
cd %0\..\.. 
set BASEDIR=%CD%
cd %SAVEDIR%
set SAVE_DIR=
goto repoSetup

:WinNTGetScriptDir
set BASEDIR=%~dp0\..

:repoSetup


if "%JAVACMD%"=="" set JAVACMD=java

if "%REPO%"=="" set REPO=%BASEDIR%\repo

set CLASSPATH="%BASEDIR%"\etc;"%REPO%"\com\stormpath\sdk\stormpath-servlet-plugin\1.0.RC3.1\stormpath-servlet-plugin-1.0.RC3.1.jar;"%REPO%"\com\stormpath\sdk\stormpath-sdk-servlet\1.0.RC3.1\stormpath-sdk-servlet-1.0.RC3.1.jar;"%REPO%"\com\stormpath\sdk\stormpath-sdk-api\1.0.RC3.1\stormpath-sdk-api-1.0.RC3.1.jar;"%REPO%"\com\stormpath\sdk\stormpath-sdk-oauth\1.0.RC3.1\stormpath-sdk-oauth-1.0.RC3.1.jar;"%REPO%"\org\apache\oltu\oauth2\org.apache.oltu.oauth2.authzserver\1.0.0\org.apache.oltu.oauth2.authzserver-1.0.0.jar;"%REPO%"\org\apache\oltu\oauth2\org.apache.oltu.oauth2.common\1.0.0\org.apache.oltu.oauth2.common-1.0.0.jar;"%REPO%"\org\json\json\20131018\json-20131018.jar;"%REPO%"\org\apache\oltu\oauth2\org.apache.oltu.oauth2.resourceserver\1.0.0\org.apache.oltu.oauth2.resourceserver-1.0.0.jar;"%REPO%"\com\stormpath\sdk\stormpath-sdk-impl\1.0.RC3.1\stormpath-sdk-impl-1.0.RC3.1.jar;"%REPO%"\com\fasterxml\jackson\core\jackson-databind\2.4.3\jackson-databind-2.4.3.jar;"%REPO%"\com\fasterxml\jackson\core\jackson-annotations\2.4.0\jackson-annotations-2.4.0.jar;"%REPO%"\com\fasterxml\jackson\core\jackson-core\2.4.3\jackson-core-2.4.3.jar;"%REPO%"\io\jsonwebtoken\jjwt\0.4\jjwt-0.4.jar;"%REPO%"\org\springframework\spring-expression\4.1.1.RELEASE\spring-expression-4.1.1.RELEASE.jar;"%REPO%"\org\springframework\spring-core\4.1.1.RELEASE\spring-core-4.1.1.RELEASE.jar;"%REPO%"\com\stormpath\sdk\stormpath-sdk-httpclient\1.0.RC3.1\stormpath-sdk-httpclient-1.0.RC3.1.jar;"%REPO%"\org\apache\httpcomponents\httpclient\4.2.2\httpclient-4.2.2.jar;"%REPO%"\org\apache\httpcomponents\httpcore\4.2.2\httpcore-4.2.2.jar;"%REPO%"\javax\servlet\jstl\1.2\jstl-1.2.jar;"%REPO%"\ch\qos\logback\logback-classic\1.0.13\logback-classic-1.0.13.jar;"%REPO%"\ch\qos\logback\logback-core\1.0.13\logback-core-1.0.13.jar;"%REPO%"\org\slf4j\slf4j-api\1.7.5\slf4j-api-1.7.5.jar;"%REPO%"\org\apache\tomcat\embed\tomcat-embed-core\7.0.67\tomcat-embed-core-7.0.67.jar;"%REPO%"\org\apache\tomcat\embed\tomcat-embed-logging-juli\7.0.67\tomcat-embed-logging-juli-7.0.67.jar;"%REPO%"\org\apache\tomcat\embed\tomcat-embed-jasper\7.0.67\tomcat-embed-jasper-7.0.67.jar;"%REPO%"\org\apache\tomcat\embed\tomcat-embed-el\7.0.67\tomcat-embed-el-7.0.67.jar;"%REPO%"\org\eclipse\jdt\core\compiler\ecj\4.4.2\ecj-4.4.2.jar;"%REPO%"\org\apache\tomcat\tomcat-jasper\7.0.67\tomcat-jasper-7.0.67.jar;"%REPO%"\org\apache\tomcat\tomcat-servlet-api\7.0.67\tomcat-servlet-api-7.0.67.jar;"%REPO%"\org\apache\tomcat\tomcat-juli\7.0.67\tomcat-juli-7.0.67.jar;"%REPO%"\org\apache\tomcat\tomcat-el-api\7.0.67\tomcat-el-api-7.0.67.jar;"%REPO%"\org\apache\tomcat\tomcat-api\7.0.67\tomcat-api-7.0.67.jar;"%REPO%"\org\apache\tomcat\tomcat-util\7.0.67\tomcat-util-7.0.67.jar;"%REPO%"\org\apache\tomcat\tomcat-jasper-el\7.0.67\tomcat-jasper-el-7.0.67.jar;"%REPO%"\org\apache\tomcat\tomcat-jsp-api\7.0.67\tomcat-jsp-api-7.0.67.jar;"%REPO%"\org\apache\tomcat\catalina\6.0.26\catalina-6.0.26.jar;"%REPO%"\org\apache\tomcat\servlet-api\6.0.26\servlet-api-6.0.26.jar;"%REPO%"\org\apache\tomcat\juli\6.0.26\juli-6.0.26.jar;"%REPO%"\org\apache\tomcat\annotations-api\6.0.26\annotations-api-6.0.26.jar;"%REPO%"\org\apache\tomcat\maven\tomcat7-maven-plugin\2.2\tomcat7-maven-plugin-2.2.jar;"%REPO%"\org\apache\tomcat\tomcat-coyote\7.0.47\tomcat-coyote-7.0.47.jar;"%REPO%"\org\apache\tomcat\tomcat-jdbc\7.0.47\tomcat-jdbc-7.0.47.jar;"%REPO%"\org\apache\tomcat\tomcat-dbcp\7.0.47\tomcat-dbcp-7.0.47.jar;"%REPO%"\org\apache\tomcat\tomcat-tribes\7.0.47\tomcat-tribes-7.0.47.jar;"%REPO%"\org\apache\tomcat\tomcat-catalina-ha\7.0.47\tomcat-catalina-ha-7.0.47.jar;"%REPO%"\org\apache\tomcat\tomcat-annotations-api\7.0.47\tomcat-annotations-api-7.0.47.jar;"%REPO%"\org\apache\tomcat\embed\tomcat-embed-logging-log4j\7.0.47\tomcat-embed-logging-log4j-7.0.47.jar;"%REPO%"\org\apache\tomcat\maven\common-tomcat-maven-plugin\2.2\common-tomcat-maven-plugin-2.2.jar;"%REPO%"\org\apache\maven\maven-project\2.2.1\maven-project-2.2.1.jar;"%REPO%"\org\apache\maven\maven-profile\2.2.1\maven-profile-2.2.1.jar;"%REPO%"\org\apache\maven\maven-artifact-manager\2.2.1\maven-artifact-manager-2.2.1.jar;"%REPO%"\backport-util-concurrent\backport-util-concurrent\3.1\backport-util-concurrent-3.1.jar;"%REPO%"\org\apache\maven\maven-plugin-registry\2.2.1\maven-plugin-registry-2.2.1.jar;"%REPO%"\com\google\guava\guava\10.0.1\guava-10.0.1.jar;"%REPO%"\com\google\code\findbugs\jsr305\1.3.9\jsr305-1.3.9.jar;"%REPO%"\org\codehaus\plexus\plexus-component-annotations\1.5.5\plexus-component-annotations-1.5.5.jar;"%REPO%"\commons-codec\commons-codec\1.6\commons-codec-1.6.jar;"%REPO%"\org\apache\tomcat\maven\tomcat7-war-runner\2.2\tomcat7-war-runner-2.2.jar;"%REPO%"\commons-cli\commons-cli\1.2\commons-cli-1.2.jar;"%REPO%"\org\apache\maven\maven-plugin-api\2.2.1\maven-plugin-api-2.2.1.jar;"%REPO%"\org\apache\maven\maven-archiver\2.4.2\maven-archiver-2.4.2.jar;"%REPO%"\org\apache\maven\maven-artifact\2.0.6\maven-artifact-2.0.6.jar;"%REPO%"\org\apache\maven\maven-model\2.0.6\maven-model-2.0.6.jar;"%REPO%"\org\codehaus\plexus\plexus-interpolation\1.13\plexus-interpolation-1.13.jar;"%REPO%"\org\codehaus\plexus\plexus-classworlds\2.2.2\plexus-classworlds-2.2.2.jar;"%REPO%"\commons-io\commons-io\2.2\commons-io-2.2.jar;"%REPO%"\commons-lang\commons-lang\2.6\commons-lang-2.6.jar;"%REPO%"\org\apache\commons\commons-compress\1.4.1\commons-compress-1.4.1.jar;"%REPO%"\org\tukaani\xz\1.0\xz-1.0.jar;"%REPO%"\org\codehaus\plexus\plexus-archiver\2.1.1\plexus-archiver-2.1.1.jar;"%REPO%"\org\codehaus\plexus\plexus-container-default\1.0-alpha-9-stable-1\plexus-container-default-1.0-alpha-9-stable-1.jar;"%REPO%"\junit\junit\3.8.1\junit-3.8.1.jar;"%REPO%"\classworlds\classworlds\1.1-alpha-2\classworlds-1.1-alpha-2.jar;"%REPO%"\org\codehaus\plexus\plexus-io\2.0.3\plexus-io-2.0.3.jar;"%REPO%"\org\codehaus\plexus\plexus-utils\3.0.15\plexus-utils-3.0.15.jar;"%REPO%"\org\apache\maven\shared\maven-filtering\1.0\maven-filtering-1.0.jar;"%REPO%"\org\apache\maven\maven-core\2.0.6\maven-core-2.0.6.jar;"%REPO%"\org\apache\maven\wagon\wagon-file\1.0-beta-2\wagon-file-1.0-beta-2.jar;"%REPO%"\org\apache\maven\maven-plugin-parameter-documenter\2.0.6\maven-plugin-parameter-documenter-2.0.6.jar;"%REPO%"\org\apache\maven\wagon\wagon-http-lightweight\1.0-beta-2\wagon-http-lightweight-1.0-beta-2.jar;"%REPO%"\org\apache\maven\wagon\wagon-http-shared\1.0-beta-2\wagon-http-shared-1.0-beta-2.jar;"%REPO%"\jtidy\jtidy\4aug2000r7-dev\jtidy-4aug2000r7-dev.jar;"%REPO%"\xml-apis\xml-apis\1.0.b2\xml-apis-1.0.b2.jar;"%REPO%"\org\apache\maven\reporting\maven-reporting-api\2.0.6\maven-reporting-api-2.0.6.jar;"%REPO%"\org\apache\maven\doxia\doxia-sink-api\1.0-alpha-7\doxia-sink-api-1.0-alpha-7.jar;"%REPO%"\org\apache\maven\wagon\wagon-provider-api\1.0-beta-2\wagon-provider-api-1.0-beta-2.jar;"%REPO%"\org\apache\maven\maven-repository-metadata\2.0.6\maven-repository-metadata-2.0.6.jar;"%REPO%"\org\apache\maven\maven-error-diagnostics\2.0.6\maven-error-diagnostics-2.0.6.jar;"%REPO%"\org\apache\maven\wagon\wagon-ssh-external\1.0-beta-2\wagon-ssh-external-1.0-beta-2.jar;"%REPO%"\org\apache\maven\wagon\wagon-ssh-common\1.0-beta-2\wagon-ssh-common-1.0-beta-2.jar;"%REPO%"\org\apache\maven\maven-plugin-descriptor\2.0.6\maven-plugin-descriptor-2.0.6.jar;"%REPO%"\org\codehaus\plexus\plexus-interactivity-api\1.0-alpha-4\plexus-interactivity-api-1.0-alpha-4.jar;"%REPO%"\org\apache\maven\wagon\wagon-ssh\1.0-beta-2\wagon-ssh-1.0-beta-2.jar;"%REPO%"\com\jcraft\jsch\0.1.27\jsch-0.1.27.jar;"%REPO%"\org\apache\maven\maven-monitor\2.0.6\maven-monitor-2.0.6.jar;"%REPO%"\org\apache\maven\maven-settings\2.0.6\maven-settings-2.0.6.jar;"%REPO%"\org\sonatype\plexus\plexus-build-api\0.0.4\plexus-build-api-0.0.4.jar;"%REPO%"\org\slf4j\jcl-over-slf4j\1.7.5\jcl-over-slf4j-1.7.5.jar;"%REPO%"\com\stormpath\samples\stormpath-webapp-tutorial\0.1.0\stormpath-webapp-tutorial-0.1.0.war
set EXTRA_JVM_ARGUMENTS=
goto endInit

@REM Reaching here means variables are defined and arguments have been captured
:endInit

%JAVACMD% %JAVA_OPTS% %EXTRA_JVM_ARGUMENTS% -classpath %CLASSPATH_PREFIX%;%CLASSPATH% -Dapp.name="webapp" -Dapp.repo="%REPO%" -Dbasedir="%BASEDIR%" launch.Main %CMD_LINE_ARGS%
if ERRORLEVEL 1 goto error
goto end

:error
if "%OS%"=="Windows_NT" @endlocal
set ERROR_CODE=1

:end
@REM set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" goto endNT

@REM For old DOS remove the set variables from ENV - we assume they were not set
@REM before we started - at least we don't leave any baggage around
set CMD_LINE_ARGS=
goto postExec

:endNT
@endlocal

:postExec

if "%FORCE_EXIT_ON_ERROR%" == "on" (
  if %ERROR_CODE% NEQ 0 exit %ERROR_CODE%
)

exit /B %ERROR_CODE%
