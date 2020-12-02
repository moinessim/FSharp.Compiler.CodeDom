
with import ../nixpkgs.nix {};
{
   FSharpCompilerCodeDom = callPackage ./FSharp.Compiler.CodeDom {
 
    FAKE = callPackage ./FAKE {};
    FSharpCompilerService = callPackage ./FSharp.Compiler.Service {};
    FSharpFormatting = callPackage ./FSharp.Formatting {};
    FSharpVSPowerToolsCore = callPackage ./FSharpVSPowerTools.Core {};
    MicrosoftBcl = callPackage ./Microsoft.Bcl {};
    MicrosoftBclBuild = callPackage ./Microsoft.Bcl.Build {};
    MicrosoftNetHttp = callPackage ./Microsoft.Net.Http {};
    Octokit = callPackage ./Octokit {};
    SourceLinkFake = callPackage ./SourceLink.Fake {};
    FSharpCore = callPackage ./FSharp.Core {};
    MicrosoftNETCorePlatforms = callPackage ./Microsoft.NETCore.Platforms {};
    MicrosoftNETCoreTargets = callPackage ./Microsoft.NETCore.Targets {};
    NUnit = callPackage ./NUnit {};
    NUnitRunners = callPackage ./NUnit.Runners {};
    runtimedebian8-x64runtimenativeSystemSecurityCryptographyOpenSsl = callPackage ./runtime.debian.8-x64.runtime.native.System.Security.Cryptography.OpenSsl {};
    runtimedebian9-x64runtimenativeSystemSecurityCryptographyOpenSsl = callPackage ./runtime.debian.9-x64.runtime.native.System.Security.Cryptography.OpenSsl {};
    runtimefedora23-x64runtimenativeSystemSecurityCryptographyOpenSsl = callPackage ./runtime.fedora.23-x64.runtime.native.System.Security.Cryptography.OpenSsl {};
    runtimefedora24-x64runtimenativeSystemSecurityCryptographyOpenSsl = callPackage ./runtime.fedora.24-x64.runtime.native.System.Security.Cryptography.OpenSsl {};
    runtimefedora27-x64runtimenativeSystemSecurityCryptographyOpenSsl = callPackage ./runtime.fedora.27-x64.runtime.native.System.Security.Cryptography.OpenSsl {};
    runtimefedora28-x64runtimenativeSystemSecurityCryptographyOpenSsl = callPackage ./runtime.fedora.28-x64.runtime.native.System.Security.Cryptography.OpenSsl {};
    runtimenativeSystem = callPackage ./runtime.native.System {};
    runtimenativeSystemNetHttp = callPackage ./runtime.native.System.Net.Http {};
    runtimenativeSystemSecurityCryptographyApple = callPackage ./runtime.native.System.Security.Cryptography.Apple {};
    runtimenativeSystemSecurityCryptographyOpenSsl = callPackage ./runtime.native.System.Security.Cryptography.OpenSsl {};
    runtimeopensuse132-x64runtimenativeSystemSecurityCryptographyOpenSsl = callPackage ./runtime.opensuse.13.2-x64.runtime.native.System.Security.Cryptography.OpenSsl {};
    runtimeopensuse421-x64runtimenativeSystemSecurityCryptographyOpenSsl = callPackage ./runtime.opensuse.42.1-x64.runtime.native.System.Security.Cryptography.OpenSsl {};
    runtimeopensuse423-x64runtimenativeSystemSecurityCryptographyOpenSsl = callPackage ./runtime.opensuse.42.3-x64.runtime.native.System.Security.Cryptography.OpenSsl {};
    runtimeosx1010-x64runtimenativeSystemSecurityCryptographyApple = callPackage ./runtime.osx.10.10-x64.runtime.native.System.Security.Cryptography.Apple {};
    runtimeosx1010-x64runtimenativeSystemSecurityCryptographyOpenSsl = callPackage ./runtime.osx.10.10-x64.runtime.native.System.Security.Cryptography.OpenSsl {};
    runtimerhel7-x64runtimenativeSystemSecurityCryptographyOpenSsl = callPackage ./runtime.rhel.7-x64.runtime.native.System.Security.Cryptography.OpenSsl {};
    runtimeubuntu1404-x64runtimenativeSystemSecurityCryptographyOpenSsl = callPackage ./runtime.ubuntu.14.04-x64.runtime.native.System.Security.Cryptography.OpenSsl {};
    runtimeubuntu1604-x64runtimenativeSystemSecurityCryptographyOpenSsl = callPackage ./runtime.ubuntu.16.04-x64.runtime.native.System.Security.Cryptography.OpenSsl {};
    runtimeubuntu1610-x64runtimenativeSystemSecurityCryptographyOpenSsl = callPackage ./runtime.ubuntu.16.10-x64.runtime.native.System.Security.Cryptography.OpenSsl {};
    runtimeubuntu1804-x64runtimenativeSystemSecurityCryptographyOpenSsl = callPackage ./runtime.ubuntu.18.04-x64.runtime.native.System.Security.Cryptography.OpenSsl {};
    SystemAppContext = callPackage ./System.AppContext {};
    SystemBuffers = callPackage ./System.Buffers {};
    SystemCollections = callPackage ./System.Collections {};
    SystemCollectionsConcurrent = callPackage ./System.Collections.Concurrent {};
    SystemConsole = callPackage ./System.Console {};
    SystemDiagnosticsDebug = callPackage ./System.Diagnostics.Debug {};
    SystemDiagnosticsDiagnosticSource = callPackage ./System.Diagnostics.DiagnosticSource {};
    SystemDiagnosticsTools = callPackage ./System.Diagnostics.Tools {};
    SystemDiagnosticsTracing = callPackage ./System.Diagnostics.Tracing {};
    SystemGlobalization = callPackage ./System.Globalization {};
    SystemGlobalizationCalendars = callPackage ./System.Globalization.Calendars {};
    SystemGlobalizationExtensions = callPackage ./System.Globalization.Extensions {};
    SystemIO = callPackage ./System.IO {};
    SystemIOFileSystem = callPackage ./System.IO.FileSystem {};
    SystemIOFileSystemPrimitives = callPackage ./System.IO.FileSystem.Primitives {};
    SystemLinq = callPackage ./System.Linq {};
    SystemLinqExpressions = callPackage ./System.Linq.Expressions {};
    SystemLinqQueryable = callPackage ./System.Linq.Queryable {};
    SystemMemory = callPackage ./System.Memory {};
    SystemNetHttp = callPackage ./System.Net.Http {};
    SystemNetPrimitives = callPackage ./System.Net.Primitives {};
    SystemNetRequests = callPackage ./System.Net.Requests {};
    SystemNetWebHeaderCollection = callPackage ./System.Net.WebHeaderCollection {};
    SystemObjectModel = callPackage ./System.ObjectModel {};
    SystemReflection = callPackage ./System.Reflection {};
    SystemReflectionEmit = callPackage ./System.Reflection.Emit {};
    SystemReflectionEmitILGeneration = callPackage ./System.Reflection.Emit.ILGeneration {};
    SystemReflectionEmitLightweight = callPackage ./System.Reflection.Emit.Lightweight {};
    SystemReflectionExtensions = callPackage ./System.Reflection.Extensions {};
    SystemReflectionPrimitives = callPackage ./System.Reflection.Primitives {};
    SystemReflectionTypeExtensions = callPackage ./System.Reflection.TypeExtensions {};
    SystemResourcesResourceManager = callPackage ./System.Resources.ResourceManager {};
    SystemRuntime = callPackage ./System.Runtime {};
    SystemRuntimeCompilerServicesUnsafe = callPackage ./System.Runtime.CompilerServices.Unsafe {};
    SystemRuntimeExtensions = callPackage ./System.Runtime.Extensions {};
    SystemRuntimeHandles = callPackage ./System.Runtime.Handles {};
    SystemRuntimeInteropServices = callPackage ./System.Runtime.InteropServices {};
    SystemRuntimeNumerics = callPackage ./System.Runtime.Numerics {};
    SystemSecurityCryptographyAlgorithms = callPackage ./System.Security.Cryptography.Algorithms {};
    SystemSecurityCryptographyCng = callPackage ./System.Security.Cryptography.Cng {};
    SystemSecurityCryptographyCsp = callPackage ./System.Security.Cryptography.Csp {};
    SystemSecurityCryptographyEncoding = callPackage ./System.Security.Cryptography.Encoding {};
    SystemSecurityCryptographyOpenSsl = callPackage ./System.Security.Cryptography.OpenSsl {};
    SystemSecurityCryptographyPrimitives = callPackage ./System.Security.Cryptography.Primitives {};
    SystemSecurityCryptographyX509Certificates = callPackage ./System.Security.Cryptography.X509Certificates {};
    SystemTextEncoding = callPackage ./System.Text.Encoding {};
    SystemTextRegularExpressions = callPackage ./System.Text.RegularExpressions {};
    SystemThreading = callPackage ./System.Threading {};
    SystemThreadingTasks = callPackage ./System.Threading.Tasks {};
    SystemThreadingTasksParallel = callPackage ./System.Threading.Tasks.Parallel {};
    SystemThreadingThread = callPackage ./System.Threading.Thread {};
    SystemThreadingThreadPool = callPackage ./System.Threading.ThreadPool {};
    SystemThreadingTimer = callPackage ./System.Threading.Timer {}; 
};
}
