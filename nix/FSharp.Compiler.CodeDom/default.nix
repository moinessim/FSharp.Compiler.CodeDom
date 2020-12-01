
{ stdenv, fetchgit, fetchurl, fsharp, mono , FAKE, FSharpCompilerService, FSharpFormatting, FSharpVSPowerToolsCore, MicrosoftBcl, MicrosoftBclBuild, MicrosoftNetHttp, Octokit, SourceLinkFake, FSharpCore, MicrosoftNETCorePlatforms, MicrosoftNETCoreTargets, NUnit, NUnitRunners, runtimedebian8-x64runtimenativeSystemSecurityCryptographyOpenSsl, runtimedebian9-x64runtimenativeSystemSecurityCryptographyOpenSsl, runtimefedora23-x64runtimenativeSystemSecurityCryptographyOpenSsl, runtimefedora24-x64runtimenativeSystemSecurityCryptographyOpenSsl, runtimefedora27-x64runtimenativeSystemSecurityCryptographyOpenSsl, runtimefedora28-x64runtimenativeSystemSecurityCryptographyOpenSsl, runtimenativeSystem, runtimenativeSystemNetHttp, runtimenativeSystemSecurityCryptographyApple, runtimenativeSystemSecurityCryptographyOpenSsl, runtimeopensuse132-x64runtimenativeSystemSecurityCryptographyOpenSsl, runtimeopensuse421-x64runtimenativeSystemSecurityCryptographyOpenSsl, runtimeopensuse423-x64runtimenativeSystemSecurityCryptographyOpenSsl, runtimeosx1010-x64runtimenativeSystemSecurityCryptographyApple, runtimeosx1010-x64runtimenativeSystemSecurityCryptographyOpenSsl, runtimerhel7-x64runtimenativeSystemSecurityCryptographyOpenSsl, runtimeubuntu1404-x64runtimenativeSystemSecurityCryptographyOpenSsl, runtimeubuntu1604-x64runtimenativeSystemSecurityCryptographyOpenSsl, runtimeubuntu1610-x64runtimenativeSystemSecurityCryptographyOpenSsl, runtimeubuntu1804-x64runtimenativeSystemSecurityCryptographyOpenSsl, SystemAppContext, SystemBuffers, SystemCollections, SystemCollectionsConcurrent, SystemConsole, SystemDiagnosticsDebug, SystemDiagnosticsDiagnosticSource, SystemDiagnosticsTools, SystemDiagnosticsTracing, SystemGlobalization, SystemGlobalizationCalendars, SystemGlobalizationExtensions, SystemIO, SystemIOFileSystem, SystemIOFileSystemPrimitives, SystemLinq, SystemLinqExpressions, SystemLinqQueryable, SystemMemory, SystemNetHttp, SystemNetPrimitives, SystemNetRequests, SystemNetWebHeaderCollection, SystemObjectModel, SystemReflection, SystemReflectionEmit, SystemReflectionEmitILGeneration, SystemReflectionEmitLightweight, SystemReflectionExtensions, SystemReflectionPrimitives, SystemReflectionTypeExtensions, SystemResourcesResourceManager, SystemRuntime, SystemRuntimeCompilerServicesUnsafe, SystemRuntimeExtensions, SystemRuntimeHandles, SystemRuntimeInteropServices, SystemRuntimeNumerics, SystemSecurityCryptographyAlgorithms, SystemSecurityCryptographyCng, SystemSecurityCryptographyCsp, SystemSecurityCryptographyEncoding, SystemSecurityCryptographyOpenSsl, SystemSecurityCryptographyPrimitives, SystemSecurityCryptographyX509Certificates, SystemTextEncoding, SystemTextRegularExpressions, SystemThreading, SystemThreadingTasks, SystemThreadingTasksParallel, SystemThreadingThread, SystemThreadingThreadPool, SystemThreadingTimer }:

stdenv.mkDerivation {
  name = "fsharp.compiler.codedom-0.0.0.0";

  src = fetchurl {
    url    = "http://github.com/fsprojects/FSharp.Compiler.CodeDom/archive/master.tar.gz";
    sha256 = "1f816542749ff17b0eee40a827fc7c0d26c73ffafa14ba21a9868198c4c7917a";
  };

  meta = {
    homepage = "http://github.com/fsprojects/FSharp.Compiler.CodeDom/archive/master.tar.gz";
    description = "A limited CodeDom implementation for F#";
    maintainers = [  "F# Software Foundation; Microsoft" ];
  };

  phases = [ "unpackPhase" "patchPhase" "buildPhase" "installPhase" ];

  buildInputs = [ fsharp mono  FAKE FSharpCompilerService FSharpFormatting FSharpVSPowerToolsCore MicrosoftBcl MicrosoftBclBuild MicrosoftNetHttp Octokit SourceLinkFake FSharpCore MicrosoftNETCorePlatforms MicrosoftNETCoreTargets NUnit NUnitRunners runtimedebian8-x64runtimenativeSystemSecurityCryptographyOpenSsl runtimedebian9-x64runtimenativeSystemSecurityCryptographyOpenSsl runtimefedora23-x64runtimenativeSystemSecurityCryptographyOpenSsl runtimefedora24-x64runtimenativeSystemSecurityCryptographyOpenSsl runtimefedora27-x64runtimenativeSystemSecurityCryptographyOpenSsl runtimefedora28-x64runtimenativeSystemSecurityCryptographyOpenSsl runtimenativeSystem runtimenativeSystemNetHttp runtimenativeSystemSecurityCryptographyApple runtimenativeSystemSecurityCryptographyOpenSsl runtimeopensuse132-x64runtimenativeSystemSecurityCryptographyOpenSsl runtimeopensuse421-x64runtimenativeSystemSecurityCryptographyOpenSsl runtimeopensuse423-x64runtimenativeSystemSecurityCryptographyOpenSsl runtimeosx1010-x64runtimenativeSystemSecurityCryptographyApple runtimeosx1010-x64runtimenativeSystemSecurityCryptographyOpenSsl runtimerhel7-x64runtimenativeSystemSecurityCryptographyOpenSsl runtimeubuntu1404-x64runtimenativeSystemSecurityCryptographyOpenSsl runtimeubuntu1604-x64runtimenativeSystemSecurityCryptographyOpenSsl runtimeubuntu1610-x64runtimenativeSystemSecurityCryptographyOpenSsl runtimeubuntu1804-x64runtimenativeSystemSecurityCryptographyOpenSsl SystemAppContext SystemBuffers SystemCollections SystemCollectionsConcurrent SystemConsole SystemDiagnosticsDebug SystemDiagnosticsDiagnosticSource SystemDiagnosticsTools SystemDiagnosticsTracing SystemGlobalization SystemGlobalizationCalendars SystemGlobalizationExtensions SystemIO SystemIOFileSystem SystemIOFileSystemPrimitives SystemLinq SystemLinqExpressions SystemLinqQueryable SystemMemory SystemNetHttp SystemNetPrimitives SystemNetRequests SystemNetWebHeaderCollection SystemObjectModel SystemReflection SystemReflectionEmit SystemReflectionEmitILGeneration SystemReflectionEmitLightweight SystemReflectionExtensions SystemReflectionPrimitives SystemReflectionTypeExtensions SystemResourcesResourceManager SystemRuntime SystemRuntimeCompilerServicesUnsafe SystemRuntimeExtensions SystemRuntimeHandles SystemRuntimeInteropServices SystemRuntimeNumerics SystemSecurityCryptographyAlgorithms SystemSecurityCryptographyCng SystemSecurityCryptographyCsp SystemSecurityCryptographyEncoding SystemSecurityCryptographyOpenSsl SystemSecurityCryptographyPrimitives SystemSecurityCryptographyX509Certificates SystemTextEncoding SystemTextRegularExpressions SystemThreading SystemThreadingTasks SystemThreadingTasksParallel SystemThreadingThread SystemThreadingThreadPool SystemThreadingTimer ];

  patchPhase = ''
    mkdir -p packages

    find . -type f -iname '*.fsproj' -exec sed -i '/paket.targets/'d '{}'  \;
    find . -type f -iname '*.csproj' -exec sed -i '/paket.targets/'d '{}'  \;
    find . -type f -iname '*.vbproj' -exec sed -i '/paket.targets/'d '{}'  \;

    ln -s "${FAKE}/lib/mono/packages/fake-4.64.18/FAKE" "packages/FAKE"
    ln -s "${FSharpCompilerService}/lib/mono/packages/fsharp.compiler.service-2.0.0.6/FSharp.Compiler.Service" "packages/FSharp.Compiler.Service"
    ln -s "${FSharpFormatting}/lib/mono/packages/fsharp.formatting-2.14.4/FSharp.Formatting" "packages/FSharp.Formatting"
    ln -s "${FSharpVSPowerToolsCore}/lib/mono/packages/fsharpvspowertools.core-2.3.0/FSharpVSPowerTools.Core" "packages/FSharpVSPowerTools.Core"
    ln -s "${MicrosoftBcl}/lib/mono/packages/microsoft.bcl-1.1.10/Microsoft.Bcl" "packages/Microsoft.Bcl"
    ln -s "${MicrosoftBclBuild}/lib/mono/packages/microsoft.bcl.build-1.0.21/Microsoft.Bcl.Build" "packages/Microsoft.Bcl.Build"
    ln -s "${MicrosoftNetHttp}/lib/mono/packages/microsoft.net.http-2.2.29/Microsoft.Net.Http" "packages/Microsoft.Net.Http"
    ln -s "${Octokit}/lib/mono/packages/octokit-0.24.0/Octokit" "packages/Octokit"
    ln -s "${SourceLinkFake}/lib/mono/packages/sourcelink.fake-1.1.0/SourceLink.Fake" "packages/SourceLink.Fake"
    ln -s "${FSharpCore}/lib/mono/packages/fsharp.core-4.5.0/FSharp.Core" "packages/FSharp.Core"
    ln -s "${MicrosoftNETCorePlatforms}/lib/mono/packages/microsoft.netcore.platforms-5.0/Microsoft.NETCore.Platforms" "packages/Microsoft.NETCore.Platforms"
    ln -s "${MicrosoftNETCoreTargets}/lib/mono/packages/microsoft.netcore.targets-5.0/Microsoft.NETCore.Targets" "packages/Microsoft.NETCore.Targets"
    ln -s "${NUnit}/lib/mono/packages/nunit-2.6.4/NUnit" "packages/NUnit"
    ln -s "${NUnitRunners}/lib/mono/packages/nunit.runners-2.6.4/NUnit.Runners" "packages/NUnit.Runners"
    ln -s "${runtimedebian8-x64runtimenativeSystemSecurityCryptographyOpenSsl}/lib/mono/packages/runtime.debian.8-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.debian.8-x64.runtime.native.System.Security.Cryptography.OpenSsl" "packages/runtime.debian.8-x64.runtime.native.System.Security.Cryptography.OpenSsl"
    ln -s "${runtimedebian9-x64runtimenativeSystemSecurityCryptographyOpenSsl}/lib/mono/packages/runtime.debian.9-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.debian.9-x64.runtime.native.System.Security.Cryptography.OpenSsl" "packages/runtime.debian.9-x64.runtime.native.System.Security.Cryptography.OpenSsl"
    ln -s "${runtimefedora23-x64runtimenativeSystemSecurityCryptographyOpenSsl}/lib/mono/packages/runtime.fedora.23-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.fedora.23-x64.runtime.native.System.Security.Cryptography.OpenSsl" "packages/runtime.fedora.23-x64.runtime.native.System.Security.Cryptography.OpenSsl"
    ln -s "${runtimefedora24-x64runtimenativeSystemSecurityCryptographyOpenSsl}/lib/mono/packages/runtime.fedora.24-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.fedora.24-x64.runtime.native.System.Security.Cryptography.OpenSsl" "packages/runtime.fedora.24-x64.runtime.native.System.Security.Cryptography.OpenSsl"
    ln -s "${runtimefedora27-x64runtimenativeSystemSecurityCryptographyOpenSsl}/lib/mono/packages/runtime.fedora.27-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.fedora.27-x64.runtime.native.System.Security.Cryptography.OpenSsl" "packages/runtime.fedora.27-x64.runtime.native.System.Security.Cryptography.OpenSsl"
    ln -s "${runtimefedora28-x64runtimenativeSystemSecurityCryptographyOpenSsl}/lib/mono/packages/runtime.fedora.28-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.fedora.28-x64.runtime.native.System.Security.Cryptography.OpenSsl" "packages/runtime.fedora.28-x64.runtime.native.System.Security.Cryptography.OpenSsl"
    ln -s "${runtimenativeSystem}/lib/mono/packages/runtime.native.system-4.3.1/runtime.native.System" "packages/runtime.native.System"
    ln -s "${runtimenativeSystemNetHttp}/lib/mono/packages/runtime.native.system.net.http-4.3.1/runtime.native.System.Net.Http" "packages/runtime.native.System.Net.Http"
    ln -s "${runtimenativeSystemSecurityCryptographyApple}/lib/mono/packages/runtime.native.system.security.cryptography.apple-4.3.1/runtime.native.System.Security.Cryptography.Apple" "packages/runtime.native.System.Security.Cryptography.Apple"
    ln -s "${runtimenativeSystemSecurityCryptographyOpenSsl}/lib/mono/packages/runtime.native.system.security.cryptography.openssl-4.3.3/runtime.native.System.Security.Cryptography.OpenSsl" "packages/runtime.native.System.Security.Cryptography.OpenSsl"
    ln -s "${runtimeopensuse132-x64runtimenativeSystemSecurityCryptographyOpenSsl}/lib/mono/packages/runtime.opensuse.13.2-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.opensuse.13.2-x64.runtime.native.System.Security.Cryptography.OpenSsl" "packages/runtime.opensuse.13.2-x64.runtime.native.System.Security.Cryptography.OpenSsl"
    ln -s "${runtimeopensuse421-x64runtimenativeSystemSecurityCryptographyOpenSsl}/lib/mono/packages/runtime.opensuse.42.1-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.opensuse.42.1-x64.runtime.native.System.Security.Cryptography.OpenSsl" "packages/runtime.opensuse.42.1-x64.runtime.native.System.Security.Cryptography.OpenSsl"
    ln -s "${runtimeopensuse423-x64runtimenativeSystemSecurityCryptographyOpenSsl}/lib/mono/packages/runtime.opensuse.42.3-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.opensuse.42.3-x64.runtime.native.System.Security.Cryptography.OpenSsl" "packages/runtime.opensuse.42.3-x64.runtime.native.System.Security.Cryptography.OpenSsl"
    ln -s "${runtimeosx1010-x64runtimenativeSystemSecurityCryptographyApple}/lib/mono/packages/runtime.osx.10.10-x64.runtime.native.system.security.cryptography.apple-4.3.1/runtime.osx.10.10-x64.runtime.native.System.Security.Cryptography.Apple" "packages/runtime.osx.10.10-x64.runtime.native.System.Security.Cryptography.Apple"
    ln -s "${runtimeosx1010-x64runtimenativeSystemSecurityCryptographyOpenSsl}/lib/mono/packages/runtime.osx.10.10-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.osx.10.10-x64.runtime.native.System.Security.Cryptography.OpenSsl" "packages/runtime.osx.10.10-x64.runtime.native.System.Security.Cryptography.OpenSsl"
    ln -s "${runtimerhel7-x64runtimenativeSystemSecurityCryptographyOpenSsl}/lib/mono/packages/runtime.rhel.7-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.rhel.7-x64.runtime.native.System.Security.Cryptography.OpenSsl" "packages/runtime.rhel.7-x64.runtime.native.System.Security.Cryptography.OpenSsl"
    ln -s "${runtimeubuntu1404-x64runtimenativeSystemSecurityCryptographyOpenSsl}/lib/mono/packages/runtime.ubuntu.14.04-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.ubuntu.14.04-x64.runtime.native.System.Security.Cryptography.OpenSsl" "packages/runtime.ubuntu.14.04-x64.runtime.native.System.Security.Cryptography.OpenSsl"
    ln -s "${runtimeubuntu1604-x64runtimenativeSystemSecurityCryptographyOpenSsl}/lib/mono/packages/runtime.ubuntu.16.04-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.ubuntu.16.04-x64.runtime.native.System.Security.Cryptography.OpenSsl" "packages/runtime.ubuntu.16.04-x64.runtime.native.System.Security.Cryptography.OpenSsl"
    ln -s "${runtimeubuntu1610-x64runtimenativeSystemSecurityCryptographyOpenSsl}/lib/mono/packages/runtime.ubuntu.16.10-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.ubuntu.16.10-x64.runtime.native.System.Security.Cryptography.OpenSsl" "packages/runtime.ubuntu.16.10-x64.runtime.native.System.Security.Cryptography.OpenSsl"
    ln -s "${runtimeubuntu1804-x64runtimenativeSystemSecurityCryptographyOpenSsl}/lib/mono/packages/runtime.ubuntu.18.04-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.ubuntu.18.04-x64.runtime.native.System.Security.Cryptography.OpenSsl" "packages/runtime.ubuntu.18.04-x64.runtime.native.System.Security.Cryptography.OpenSsl"
    ln -s "${SystemAppContext}/lib/mono/packages/system.appcontext-4.3.0/System.AppContext" "packages/System.AppContext"
    ln -s "${SystemBuffers}/lib/mono/packages/system.buffers-4.5.1/System.Buffers" "packages/System.Buffers"
    ln -s "${SystemCollections}/lib/mono/packages/system.collections-4.3.0/System.Collections" "packages/System.Collections"
    ln -s "${SystemCollectionsConcurrent}/lib/mono/packages/system.collections.concurrent-4.3.0/System.Collections.Concurrent" "packages/System.Collections.Concurrent"
    ln -s "${SystemConsole}/lib/mono/packages/system.console-4.3.1/System.Console" "packages/System.Console"
    ln -s "${SystemDiagnosticsDebug}/lib/mono/packages/system.diagnostics.debug-4.3.0/System.Diagnostics.Debug" "packages/System.Diagnostics.Debug"
    ln -s "${SystemDiagnosticsDiagnosticSource}/lib/mono/packages/system.diagnostics.diagnosticsource-5.0.0/System.Diagnostics.DiagnosticSource" "packages/System.Diagnostics.DiagnosticSource"
    ln -s "${SystemDiagnosticsTools}/lib/mono/packages/system.diagnostics.tools-4.3.0/System.Diagnostics.Tools" "packages/System.Diagnostics.Tools"
    ln -s "${SystemDiagnosticsTracing}/lib/mono/packages/system.diagnostics.tracing-4.3.0/System.Diagnostics.Tracing" "packages/System.Diagnostics.Tracing"
    ln -s "${SystemGlobalization}/lib/mono/packages/system.globalization-4.3.0/System.Globalization" "packages/System.Globalization"
    ln -s "${SystemGlobalizationCalendars}/lib/mono/packages/system.globalization.calendars-4.3.0/System.Globalization.Calendars" "packages/System.Globalization.Calendars"
    ln -s "${SystemGlobalizationExtensions}/lib/mono/packages/system.globalization.extensions-4.3.0/System.Globalization.Extensions" "packages/System.Globalization.Extensions"
    ln -s "${SystemIO}/lib/mono/packages/system.io-4.3.0/System.IO" "packages/System.IO"
    ln -s "${SystemIOFileSystem}/lib/mono/packages/system.io.filesystem-4.3.0/System.IO.FileSystem" "packages/System.IO.FileSystem"
    ln -s "${SystemIOFileSystemPrimitives}/lib/mono/packages/system.io.filesystem.primitives-4.3.0/System.IO.FileSystem.Primitives" "packages/System.IO.FileSystem.Primitives"
    ln -s "${SystemLinq}/lib/mono/packages/system.linq-4.3.0/System.Linq" "packages/System.Linq"
    ln -s "${SystemLinqExpressions}/lib/mono/packages/system.linq.expressions-4.3.0/System.Linq.Expressions" "packages/System.Linq.Expressions"
    ln -s "${SystemLinqQueryable}/lib/mono/packages/system.linq.queryable-4.3.0/System.Linq.Queryable" "packages/System.Linq.Queryable"
    ln -s "${SystemMemory}/lib/mono/packages/system.memory-4.5.4/System.Memory" "packages/System.Memory"
    ln -s "${SystemNetHttp}/lib/mono/packages/system.net.http-4.3.4/System.Net.Http" "packages/System.Net.Http"
    ln -s "${SystemNetPrimitives}/lib/mono/packages/system.net.primitives-4.3.1/System.Net.Primitives" "packages/System.Net.Primitives"
    ln -s "${SystemNetRequests}/lib/mono/packages/system.net.requests-4.3.0/System.Net.Requests" "packages/System.Net.Requests"
    ln -s "${SystemNetWebHeaderCollection}/lib/mono/packages/system.net.webheadercollection-4.3.0/System.Net.WebHeaderCollection" "packages/System.Net.WebHeaderCollection"
    ln -s "${SystemObjectModel}/lib/mono/packages/system.objectmodel-4.3.0/System.ObjectModel" "packages/System.ObjectModel"
    ln -s "${SystemReflection}/lib/mono/packages/system.reflection-4.3.0/System.Reflection" "packages/System.Reflection"
    ln -s "${SystemReflectionEmit}/lib/mono/packages/system.reflection.emit-4.7.0/System.Reflection.Emit" "packages/System.Reflection.Emit"
    ln -s "${SystemReflectionEmitILGeneration}/lib/mono/packages/system.reflection.emit.ilgeneration-4.7.0/System.Reflection.Emit.ILGeneration" "packages/System.Reflection.Emit.ILGeneration"
    ln -s "${SystemReflectionEmitLightweight}/lib/mono/packages/system.reflection.emit.lightweight-4.7.0/System.Reflection.Emit.Lightweight" "packages/System.Reflection.Emit.Lightweight"
    ln -s "${SystemReflectionExtensions}/lib/mono/packages/system.reflection.extensions-4.3.0/System.Reflection.Extensions" "packages/System.Reflection.Extensions"
    ln -s "${SystemReflectionPrimitives}/lib/mono/packages/system.reflection.primitives-4.3.0/System.Reflection.Primitives" "packages/System.Reflection.Primitives"
    ln -s "${SystemReflectionTypeExtensions}/lib/mono/packages/system.reflection.typeextensions-4.7.0/System.Reflection.TypeExtensions" "packages/System.Reflection.TypeExtensions"
    ln -s "${SystemResourcesResourceManager}/lib/mono/packages/system.resources.resourcemanager-4.3.0/System.Resources.ResourceManager" "packages/System.Resources.ResourceManager"
    ln -s "${SystemRuntime}/lib/mono/packages/system.runtime-4.3.1/System.Runtime" "packages/System.Runtime"
    ln -s "${SystemRuntimeCompilerServicesUnsafe}/lib/mono/packages/system.runtime.compilerservices.unsafe-5.0.0/System.Runtime.CompilerServices.Unsafe" "packages/System.Runtime.CompilerServices.Unsafe"
    ln -s "${SystemRuntimeExtensions}/lib/mono/packages/system.runtime.extensions-4.3.1/System.Runtime.Extensions" "packages/System.Runtime.Extensions"
    ln -s "${SystemRuntimeHandles}/lib/mono/packages/system.runtime.handles-4.3.0/System.Runtime.Handles" "packages/System.Runtime.Handles"
    ln -s "${SystemRuntimeInteropServices}/lib/mono/packages/system.runtime.interopservices-4.3.0/System.Runtime.InteropServices" "packages/System.Runtime.InteropServices"
    ln -s "${SystemRuntimeNumerics}/lib/mono/packages/system.runtime.numerics-4.3.0/System.Runtime.Numerics" "packages/System.Runtime.Numerics"
    ln -s "${SystemSecurityCryptographyAlgorithms}/lib/mono/packages/system.security.cryptography.algorithms-4.3.1/System.Security.Cryptography.Algorithms" "packages/System.Security.Cryptography.Algorithms"
    ln -s "${SystemSecurityCryptographyCng}/lib/mono/packages/system.security.cryptography.cng-5.0.0/System.Security.Cryptography.Cng" "packages/System.Security.Cryptography.Cng"
    ln -s "${SystemSecurityCryptographyCsp}/lib/mono/packages/system.security.cryptography.csp-4.3.0/System.Security.Cryptography.Csp" "packages/System.Security.Cryptography.Csp"
    ln -s "${SystemSecurityCryptographyEncoding}/lib/mono/packages/system.security.cryptography.encoding-4.3.0/System.Security.Cryptography.Encoding" "packages/System.Security.Cryptography.Encoding"
    ln -s "${SystemSecurityCryptographyOpenSsl}/lib/mono/packages/system.security.cryptography.openssl-5.0.0/System.Security.Cryptography.OpenSsl" "packages/System.Security.Cryptography.OpenSsl"
    ln -s "${SystemSecurityCryptographyPrimitives}/lib/mono/packages/system.security.cryptography.primitives-4.3.0/System.Security.Cryptography.Primitives" "packages/System.Security.Cryptography.Primitives"
    ln -s "${SystemSecurityCryptographyX509Certificates}/lib/mono/packages/system.security.cryptography.x509certificates-4.3.2/System.Security.Cryptography.X509Certificates" "packages/System.Security.Cryptography.X509Certificates"
    ln -s "${SystemTextEncoding}/lib/mono/packages/system.text.encoding-4.3.0/System.Text.Encoding" "packages/System.Text.Encoding"
    ln -s "${SystemTextRegularExpressions}/lib/mono/packages/system.text.regularexpressions-4.3.1/System.Text.RegularExpressions" "packages/System.Text.RegularExpressions"
    ln -s "${SystemThreading}/lib/mono/packages/system.threading-4.3.0/System.Threading" "packages/System.Threading"
    ln -s "${SystemThreadingTasks}/lib/mono/packages/system.threading.tasks-4.3.0/System.Threading.Tasks" "packages/System.Threading.Tasks"
    ln -s "${SystemThreadingTasksParallel}/lib/mono/packages/system.threading.tasks.parallel-4.3.0/System.Threading.Tasks.Parallel" "packages/System.Threading.Tasks.Parallel"
    ln -s "${SystemThreadingThread}/lib/mono/packages/system.threading.thread-4.3.0/System.Threading.Thread" "packages/System.Threading.Thread"
    ln -s "${SystemThreadingThreadPool}/lib/mono/packages/system.threading.threadpool-4.3.0/System.Threading.ThreadPool" "packages/System.Threading.ThreadPool"
    ln -s "${SystemThreadingTimer}/lib/mono/packages/system.threading.timer-4.3.0/System.Threading.Timer" "packages/System.Threading.Timer"

  '';

  buildPhase = ''
    export FSharpTargetsPath=${fsharp}/lib/mono/4.5/Microsoft.FSharp.Targets
    export TargetFSharpCorePath=${fsharp}/lib/mono/4.5/FSharp.Core.dll
    xbuild /nologo /verbosity:minimal /p:Configuration="Release" FSharp.Compiler.CodeDom.sln
  '';

  installPhase = ''
    mkdir -p "$out/lib/mono/packages/fsharp.compiler.codedom-0.0.0.0";
    cp -rv src/FSharp.Compiler.CodeDom/bin/Release "$out/lib/mono/packages/fsharp.compiler.codedom-0.0.0.0/FSharp.Compiler.CodeDom"
    
  '';
}