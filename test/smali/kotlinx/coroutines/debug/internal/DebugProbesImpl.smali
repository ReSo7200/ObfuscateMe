.class public final Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
.super Ljava/lang/Object;
.source "DebugProbesImpl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;,
        Lkotlinx/coroutines/debug/internal/DebugProbesImpl$Installations$kotlinx$VolatileWrapper;,
        Lkotlinx/coroutines/debug/internal/DebugProbesImpl$SequenceNumber$kotlinx$VolatileWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDebugProbesImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugProbesImpl.kt\nkotlinx/coroutines/debug/internal/DebugProbesImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,609:1\n144#1:627\n145#1,4:629\n150#1,5:634\n144#1:639\n145#1,4:641\n150#1,5:646\n1#2:610\n1#2:628\n1#2:640\n766#3:611\n857#3,2:612\n1208#3,2:614\n1238#3,4:616\n1855#3,2:654\n350#3,7:662\n1819#3,8:669\n603#4:620\n603#4:633\n603#4:645\n603#4:651\n1295#4,2:652\n37#5,2:621\n37#5,2:623\n37#5,2:625\n1627#6,6:656\n1735#6,6:677\n*S KotlinDebug\n*F\n+ 1 DebugProbesImpl.kt\nkotlinx/coroutines/debug/internal/DebugProbesImpl\n*L\n238#1:627\n238#1:629,4\n238#1:634,5\n245#1:639\n245#1:641,4\n245#1:646,5\n238#1:628\n245#1:640\n104#1:611\n104#1:612,2\n105#1:614,2\n105#1:616,4\n299#1:654,2\n408#1:662,7\n496#1:669,8\n148#1:620\n238#1:633\n245#1:645\n279#1:651\n280#1:652,2\n204#1:621,2\n205#1:623,2\n206#1:625,2\n347#1:656,6\n547#1:677,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c6\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0015\n\u0002\u0010\u0003\n\u0002\u0008\t\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0001wB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J,\u0010.\u001a\u0008\u0012\u0004\u0012\u0002H00/\"\u0004\u0008\u0000\u001002\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u0002H00/2\u0008\u00102\u001a\u0004\u0018\u000103H\u0002J\u000e\u00104\u001a\u00020\u00142\u0006\u00105\u001a\u000206J\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020908J\u0011\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u00010;\u00a2\u0006\u0002\u0010<J9\u0010=\u001a\u0008\u0012\u0004\u0012\u0002H>08\"\u0008\u0008\u0000\u0010>*\u00020\u00012\u001e\u0008\u0004\u0010?\u001a\u0018\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000b\u0012\u0004\u0012\u00020A\u0012\u0004\u0012\u0002H>0@H\u0082\u0008J\u0010\u0010B\u001a\u00020\u00142\u0006\u00105\u001a\u000206H\u0002J\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020D08J\"\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u0004082\u0006\u0010F\u001a\u0002092\u000c\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u000408J\u000e\u0010H\u001a\u00020&2\u0006\u0010F\u001a\u000209J.\u0010I\u001a\u0008\u0012\u0004\u0012\u00020\u0004082\u0006\u0010J\u001a\u00020&2\u0008\u0010K\u001a\u0004\u0018\u00010$2\u000c\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u000408H\u0002J=\u0010L\u001a\u000e\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020N0M2\u0006\u0010O\u001a\u00020N2\u000c\u0010P\u001a\u0008\u0012\u0004\u0012\u00020\u00040;2\u000c\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u000408H\u0002\u00a2\u0006\u0002\u0010QJ1\u0010R\u001a\u00020N2\u0006\u0010S\u001a\u00020N2\u000c\u0010P\u001a\u0008\u0012\u0004\u0012\u00020\u00040;2\u000c\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u000408H\u0002\u00a2\u0006\u0002\u0010TJ\u0016\u0010U\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013H\u0002J\u000e\u0010V\u001a\u00020&2\u0006\u0010W\u001a\u00020\'J\u0006\u0010X\u001a\u00020\u0014J\u001e\u0010Y\u001a\u00020\u00142\u0006\u00105\u001a\u0002062\u000c\u0010Z\u001a\u0008\u0012\u0004\u0012\u00020\u000408H\u0002J\u0014\u0010[\u001a\u00020\u00142\n\u0010\\\u001a\u0006\u0012\u0002\u0008\u00030\u000bH\u0002J\'\u0010]\u001a\u0008\u0012\u0004\u0012\u0002H00/\"\u0004\u0008\u0000\u001002\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u0002H00/H\u0000\u00a2\u0006\u0002\u0008^J\u0019\u0010_\u001a\u00020\u00142\n\u00102\u001a\u0006\u0012\u0002\u0008\u00030/H\u0000\u00a2\u0006\u0002\u0008`J\u0019\u0010a\u001a\u00020\u00142\n\u00102\u001a\u0006\u0012\u0002\u0008\u00030/H\u0000\u00a2\u0006\u0002\u0008bJ%\u0010c\u001a\u0008\u0012\u0004\u0012\u00020\u000408\"\u0008\u0008\u0000\u00100*\u00020d2\u0006\u0010e\u001a\u0002H0H\u0002\u00a2\u0006\u0002\u0010fJ\u0008\u0010g\u001a\u00020\u0014H\u0002J\u0008\u0010h\u001a\u00020\u0014H\u0002J\u0006\u0010i\u001a\u00020\u0014J\u0018\u0010j\u001a\u00020\u00142\u0006\u00102\u001a\u00020\u00072\u0006\u0010J\u001a\u00020&H\u0002J\u001c\u0010k\u001a\u00020\u00142\n\u00102\u001a\u0006\u0012\u0002\u0008\u00030/2\u0006\u0010J\u001a\u00020&H\u0002J(\u0010k\u001a\u00020\u00142\n\u0010\\\u001a\u0006\u0012\u0002\u0008\u00030\u000b2\n\u00102\u001a\u0006\u0012\u0002\u0008\u00030/2\u0006\u0010J\u001a\u00020&H\u0002J4\u0010l\u001a\u00020\u0014*\u00020\'2\u0012\u0010m\u001a\u000e\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020\u00080n2\n\u0010o\u001a\u00060pj\u0002`q2\u0006\u0010r\u001a\u00020&H\u0002J\u0010\u0010s\u001a\u00020\u000f*\u0006\u0012\u0002\u0008\u00030\u000bH\u0002J\u0016\u0010\\\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000b*\u0006\u0012\u0002\u0008\u00030/H\u0002J\u0013\u0010\\\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000b*\u00020\u0007H\u0082\u0010J\u000f\u0010t\u001a\u0004\u0018\u00010\u0007*\u00020\u0007H\u0082\u0010J\u0012\u0010u\u001a\u000203*\u0008\u0012\u0004\u0012\u00020\u000408H\u0002J\u000c\u0010v\u001a\u00020&*\u00020\u0001H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000b0\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u001e\u0010\u000e\u001a\u0012\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000b\u0012\u0004\u0012\u00020\u000f0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\t\u0010\u001a\u001a\u00020\u001bX\u0082\u0004R\u0014\u0010\u001c\u001a\u00020\u000f8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u0017R\u001a\u0010\u001e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0017\"\u0004\u0008 \u0010\u0019R\t\u0010!\u001a\u00020\"X\u0082\u0004R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010%\u001a\u00020&*\u00020\'8BX\u0082\u0004\u00a2\u0006\u000c\u0012\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+R\u0018\u0010,\u001a\u00020\u000f*\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-\u00a8\u0006x"
    }
    d2 = {
        "Lkotlinx/coroutines/debug/internal/DebugProbesImpl;",
        "",
        "()V",
        "ARTIFICIAL_FRAME",
        "Ljava/lang/StackTraceElement;",
        "callerInfoCache",
        "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;",
        "capturedCoroutines",
        "",
        "Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;",
        "getCapturedCoroutines",
        "()Ljava/util/Set;",
        "capturedCoroutinesMap",
        "",
        "dateFormat",
        "Ljava/text/SimpleDateFormat;",
        "dynamicAttach",
        "Lkotlin/Function1;",
        "",
        "enableCreationStackTraces",
        "getEnableCreationStackTraces",
        "()Z",
        "setEnableCreationStackTraces",
        "(Z)V",
        "installations",
        "Lkotlinx/atomicfu/AtomicInt;",
        "isInstalled",
        "isInstalled$kotlinx_coroutines_core",
        "sanitizeStackTraces",
        "getSanitizeStackTraces",
        "setSanitizeStackTraces",
        "sequenceNumber",
        "Lkotlinx/atomicfu/AtomicLong;",
        "weakRefCleanerThread",
        "Ljava/lang/Thread;",
        "debugString",
        "",
        "Lkotlinx/coroutines/Job;",
        "getDebugString$annotations",
        "(Lkotlinx/coroutines/Job;)V",
        "getDebugString",
        "(Lkotlinx/coroutines/Job;)Ljava/lang/String;",
        "isInternalMethod",
        "(Ljava/lang/StackTraceElement;)Z",
        "createOwner",
        "Lkotlin/coroutines/Continuation;",
        "T",
        "completion",
        "frame",
        "Lkotlinx/coroutines/debug/internal/StackTraceFrame;",
        "dumpCoroutines",
        "out",
        "Ljava/io/PrintStream;",
        "dumpCoroutinesInfo",
        "",
        "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;",
        "dumpCoroutinesInfoAsJsonAndReferences",
        "",
        "()[Ljava/lang/Object;",
        "dumpCoroutinesInfoImpl",
        "R",
        "create",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/CoroutineContext;",
        "dumpCoroutinesSynchronized",
        "dumpDebuggerInfo",
        "Lkotlinx/coroutines/debug/internal/DebuggerInfo;",
        "enhanceStackTraceWithThreadDump",
        "info",
        "coroutineTrace",
        "enhanceStackTraceWithThreadDumpAsJson",
        "enhanceStackTraceWithThreadDumpImpl",
        "state",
        "thread",
        "findContinuationStartIndex",
        "Lkotlin/Pair;",
        "",
        "indexOfResumeWith",
        "actualTrace",
        "(I[Ljava/lang/StackTraceElement;Ljava/util/List;)Lkotlin/Pair;",
        "findIndexOfFrame",
        "frameIndex",
        "(I[Ljava/lang/StackTraceElement;Ljava/util/List;)I",
        "getDynamicAttach",
        "hierarchyToString",
        "job",
        "install",
        "printStackTrace",
        "frames",
        "probeCoroutineCompleted",
        "owner",
        "probeCoroutineCreated",
        "probeCoroutineCreated$kotlinx_coroutines_core",
        "probeCoroutineResumed",
        "probeCoroutineResumed$kotlinx_coroutines_core",
        "probeCoroutineSuspended",
        "probeCoroutineSuspended$kotlinx_coroutines_core",
        "sanitizeStackTrace",
        "",
        "throwable",
        "(Ljava/lang/Throwable;)Ljava/util/List;",
        "startWeakRefCleanerThread",
        "stopWeakRefCleanerThread",
        "uninstall",
        "updateRunningState",
        "updateState",
        "build",
        "map",
        "",
        "builder",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "indent",
        "isFinished",
        "realCaller",
        "toStackTraceFrame",
        "toStringRepr",
        "CoroutineOwner",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ARTIFICIAL_FRAME:Ljava/lang/StackTraceElement;

.field public static final INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

.field private static final callerInfoCache:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap<",
            "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
            "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final capturedCoroutinesMap:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap<",
            "Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final dateFormat:Ljava/text/SimpleDateFormat;

.field private static final dynamicAttach:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static enableCreationStackTraces:Z

.field private static final installations$kotlinx$VolatileWrapper:Lkotlinx/coroutines/debug/internal/DebugProbesImpl$Installations$kotlinx$VolatileWrapper;

.field private static sanitizeStackTraces:Z

.field private static final sequenceNumber$kotlinx$VolatileWrapper:Lkotlinx/coroutines/debug/internal/DebugProbesImpl$SequenceNumber$kotlinx$VolatileWrapper;

.field private static weakRefCleanerThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    invoke-direct {v0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;-><init>()V

    sput-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    .line 22
    new-instance v0, L_COROUTINE/ArtificialStackFrames;

    invoke-direct {v0}, L_COROUTINE/ArtificialStackFrames;-><init>()V

    invoke-virtual {v0}, L_COROUTINE/ArtificialStackFrames;->coroutineCreation()Ljava/lang/StackTraceElement;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->ARTIFICIAL_FRAME:Ljava/lang/StackTraceElement;

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 28
    new-instance v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->capturedCoroutinesMap:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    .line 42
    sput-boolean v2, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->sanitizeStackTraces:Z

    .line 43
    sput-boolean v2, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->enableCreationStackTraces:Z

    .line 49
    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    invoke-direct {v0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->getDynamicAttach()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->dynamicAttach:Lkotlin/jvm/functions/Function1;

    .line 69
    new-instance v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-direct {v0, v2}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;-><init>(Z)V

    sput-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->callerInfoCache:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    new-instance v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$Installations$kotlinx$VolatileWrapper;

    invoke-direct {v0, v3}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$Installations$kotlinx$VolatileWrapper;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->installations$kotlinx$VolatileWrapper:Lkotlinx/coroutines/debug/internal/DebugProbesImpl$Installations$kotlinx$VolatileWrapper;

    new-instance v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$SequenceNumber$kotlinx$VolatileWrapper;

    invoke-direct {v0, v3}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$SequenceNumber$kotlinx$VolatileWrapper;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->sequenceNumber$kotlinx$VolatileWrapper:Lkotlinx/coroutines/debug/internal/DebugProbesImpl$SequenceNumber$kotlinx$VolatileWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCallerInfoCache$p()Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;
    .locals 1

    .line 21
    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->callerInfoCache:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    return-object v0
.end method

.method public static final synthetic access$isFinished(Lkotlinx/coroutines/debug/internal/DebugProbesImpl;Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;)Z
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .param p1, "$receiver"    # Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    .line 21
    invoke-direct {p0, p1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isFinished(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$probeCoroutineCompleted(Lkotlinx/coroutines/debug/internal/DebugProbesImpl;Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .param p1, "owner"    # Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    .line 21
    invoke-direct {p0, p1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->probeCoroutineCompleted(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;)V

    return-void
.end method

.method private final build(Lkotlinx/coroutines/Job;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 8
    .param p1, "$this$build"    # Lkotlinx/coroutines/Job;
    .param p2, "map"    # Ljava/util/Map;
    .param p3, "builder"    # Ljava/lang/StringBuilder;
    .param p4, "indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/Job;",
            "Ljava/util/Map<",
            "Lkotlinx/coroutines/Job;",
            "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 112
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;

    .local v0, "info":Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;
    const/4 v1, 0x0

    .line 114
    .local v1, "newIndent":Ljava/lang/String;
    const/16 v2, 0x9

    const/16 v3, 0xa

    if-nez v0, :cond_1

    .line 117
    instance-of v4, p1, Lkotlinx/coroutines/internal/ScopeCoroutine;

    if-nez v4, :cond_0

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->getDebugString(Lkotlinx/coroutines/Job;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 121
    :cond_0
    move-object v1, p4

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->lastObservedStackTrace()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StackTraceElement;

    .line 126
    .local v4, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->getState()Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, "state":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->getDebugString(Lkotlinx/coroutines/Job;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", continuation is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .end local v4    # "element":Ljava/lang/StackTraceElement;
    .end local v5    # "state":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Lkotlinx/coroutines/Job;->getChildren()Lkotlin/sequences/Sequence;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/Job;

    .line 132
    .local v3, "child":Lkotlinx/coroutines/Job;
    invoke-direct {p0, v3, p2, p3, v1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->build(Lkotlinx/coroutines/Job;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .end local v3    # "child":Lkotlinx/coroutines/Job;
    goto :goto_1

    .line 134
    :cond_2
    return-void
.end method

.method private final createOwner(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/debug/internal/StackTraceFrame;)Lkotlin/coroutines/Continuation;
    .locals 4
    .param p1, "completion"    # Lkotlin/coroutines/Continuation;
    .param p2, "frame"    # Lkotlinx/coroutines/debug/internal/StackTraceFrame;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;",
            "Lkotlinx/coroutines/debug/internal/StackTraceFrame;",
            ")",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    .line 502
    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInstalled$kotlinx_coroutines_core()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 503
    :cond_0
    new-instance v0, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;

    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$SequenceNumber$kotlinx$VolatileWrapper;->access$getSequenceNumber$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->sequenceNumber$kotlinx$VolatileWrapper:Lkotlinx/coroutines/debug/internal/DebugProbesImpl$SequenceNumber$kotlinx$VolatileWrapper;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-direct {v0, v1, p2, v2, v3}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/debug/internal/StackTraceFrame;J)V

    .line 504
    .local v0, "info":Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;
    new-instance v1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    invoke-direct {v1, p1, v0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;-><init>(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;)V

    .line 505
    .local v1, "owner":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    sget-object v2, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->capturedCoroutinesMap:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    check-cast v2, Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInstalled$kotlinx_coroutines_core()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->capturedCoroutinesMap:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-virtual {v2}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->clear()V

    .line 507
    :cond_1
    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/Continuation;

    return-object v2
.end method

.method private final dumpCoroutinesInfoImpl(Lkotlin/jvm/functions/Function2;)Ljava/util/List;
    .locals 4
    .param p1, "create"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner<",
            "*>;-",
            "Lkotlin/coroutines/CoroutineContext;",
            "+TR;>;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 144
    .local v0, "$i$f$dumpCoroutinesInfoImpl":I
    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInstalled$kotlinx_coroutines_core()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->getCapturedCoroutines()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 146
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 148
    nop

    .local v1, "$this$sortedBy$iv":Lkotlin/sequences/Sequence;
    const/4 v2, 0x0

    .line 620
    .local v2, "$i$f$sortedBy":I
    new-instance v3, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesInfoImpl$$inlined$sortedBy$1;

    invoke-direct {v3}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesInfoImpl$$inlined$sortedBy$1;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v1, v3}, Lkotlin/sequences/SequencesKt;->sortedWith(Lkotlin/sequences/Sequence;Ljava/util/Comparator;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 150
    .end local v1    # "$this$sortedBy$iv":Lkotlin/sequences/Sequence;
    .end local v2    # "$i$f$sortedBy":I
    new-instance v2, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesInfoImpl$3;

    invoke-direct {v2, p1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesInfoImpl$3;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 154
    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v1

    .line 145
    return-object v1

    .line 610
    :cond_0
    const/4 v1, 0x0

    .line 144
    .local v1, "$i$a$-check-DebugProbesImpl$dumpCoroutinesInfoImpl$1":I
    nop

    .end local v1    # "$i$a$-check-DebugProbesImpl$dumpCoroutinesInfoImpl$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Debug probes are not installed"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final dumpCoroutinesSynchronized(Ljava/io/PrintStream;)V
    .locals 12
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 274
    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInstalled$kotlinx_coroutines_core()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Coroutines dump "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->getCapturedCoroutines()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 277
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 278
    sget-object v1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesSynchronized$2;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesSynchronized$2;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 279
    nop

    .local v0, "$this$sortedBy$iv":Lkotlin/sequences/Sequence;
    const/4 v1, 0x0

    .line 651
    .local v1, "$i$f$sortedBy":I
    new-instance v2, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesSynchronized$$inlined$sortedBy$1;

    invoke-direct {v2}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesSynchronized$$inlined$sortedBy$1;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v0, v2}, Lkotlin/sequences/SequencesKt;->sortedWith(Lkotlin/sequences/Sequence;Ljava/util/Comparator;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 280
    .end local v0    # "$this$sortedBy$iv":Lkotlin/sequences/Sequence;
    .end local v1    # "$i$f$sortedBy":I
    nop

    .local v0, "$this$forEach$iv":Lkotlin/sequences/Sequence;
    const/4 v1, 0x0

    .line 652
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    .local v4, "owner":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    const/4 v5, 0x0

    .line 281
    .local v5, "$i$a$-forEach-DebugProbesImpl$dumpCoroutinesSynchronized$4":I
    iget-object v6, v4, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;->info:Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;

    .line 282
    .local v6, "info":Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;
    invoke-virtual {v6}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->lastObservedStackTrace()Ljava/util/List;

    move-result-object v7

    .line 283
    .local v7, "observedStackTrace":Ljava/util/List;
    sget-object v8, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    invoke-virtual {v6}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->getState()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v6, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->lastObservedThread:Ljava/lang/Thread;

    invoke-direct {v8, v9, v10, v7}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->enhanceStackTraceWithThreadDumpImpl(Ljava/lang/String;Ljava/lang/Thread;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 284
    .local v8, "enhancedStackTrace":Ljava/util/List;
    invoke-virtual {v6}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->getState()Ljava/lang/String;

    move-result-object v9

    const-string v10, "RUNNING"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-ne v8, v7, :cond_0

    .line 285
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->getState()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (Last suspension stacktrace, not an actual stacktrace)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 287
    :cond_0
    invoke-virtual {v6}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->getState()Ljava/lang/String;

    move-result-object v9

    .line 284
    :goto_1
    nop

    .line 288
    .local v9, "state":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\n\nCoroutine "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;->delegate:Lkotlin/coroutines/Continuation;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 289
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 290
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\n\tat "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->ARTIFICIAL_FRAME:Ljava/lang/StackTraceElement;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 291
    sget-object v10, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    invoke-virtual {v6}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->getCreationStackTrace()Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, p1, v11}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->printStackTrace(Ljava/io/PrintStream;Ljava/util/List;)V

    goto :goto_2

    .line 293
    :cond_1
    sget-object v10, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    invoke-direct {v10, p1, v8}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->printStackTrace(Ljava/io/PrintStream;Ljava/util/List;)V

    .line 295
    :goto_2
    nop

    .line 652
    .end local v4    # "owner":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    .end local v5    # "$i$a$-forEach-DebugProbesImpl$dumpCoroutinesSynchronized$4":I
    .end local v6    # "info":Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;
    .end local v7    # "observedStackTrace":Ljava/util/List;
    .end local v8    # "enhancedStackTrace":Ljava/util/List;
    .end local v9    # "state":Ljava/lang/String;
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto/16 :goto_0

    .line 653
    :cond_2
    nop

    .line 296
    .end local v0    # "$this$forEach$iv":Lkotlin/sequences/Sequence;
    .end local v1    # "$i$f$forEach":I
    return-void

    .line 610
    :cond_3
    const/4 v0, 0x0

    .line 274
    .local v0, "$i$a$-check-DebugProbesImpl$dumpCoroutinesSynchronized$1":I
    nop

    .end local v0    # "$i$a$-check-DebugProbesImpl$dumpCoroutinesSynchronized$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Debug probes are not installed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final enhanceStackTraceWithThreadDumpImpl(Ljava/lang/String;Ljava/lang/Thread;Ljava/util/List;)Ljava/util/List;
    .locals 11
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "thread"    # Ljava/lang/Thread;
    .param p3, "coroutineTrace"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Thread;",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .line 326
    const-string v0, "RUNNING"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_6

    .line 328
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    .line 610
    .local v0, "$this$enhanceStackTraceWithThreadDumpImpl_u24lambda_u2416":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    const/4 v1, 0x0

    .line 328
    .local v1, "$i$a$-runCatching-DebugProbesImpl$enhanceStackTraceWithThreadDumpImpl$actualTrace$1":I
    invoke-virtual {p2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .end local v0    # "$this$enhanceStackTraceWithThreadDumpImpl_u24lambda_u2416":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .end local v1    # "$i$a$-runCatching-DebugProbesImpl$enhanceStackTraceWithThreadDumpImpl$actualTrace$1":I
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, [Ljava/lang/StackTraceElement;

    if-nez v0, :cond_2

    .line 329
    return-object p3

    .line 347
    .local v0, "actualTrace":[Ljava/lang/StackTraceElement;
    :cond_2
    move-object v1, v0

    .local v1, "$this$indexOfFirst$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 656
    .local v2, "$i$f$indexOfFirst":I
    const/4 v3, 0x0

    .local v3, "index$iv":I
    array-length v4, v1

    :goto_1
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v3, v4, :cond_5

    .line 657
    aget-object v7, v1, v3

    .local v7, "it":Ljava/lang/StackTraceElement;
    const/4 v8, 0x0

    .line 348
    .local v8, "$i$a$-indexOfFirst-DebugProbesImpl$enhanceStackTraceWithThreadDumpImpl$indexOfResumeWith$1":I
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "kotlin.coroutines.jvm.internal.BaseContinuationImpl"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 349
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "resumeWith"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 350
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ContinuationImpl.kt"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v9, v6

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 348
    :goto_2
    nop

    .line 657
    .end local v7    # "it":Ljava/lang/StackTraceElement;
    .end local v8    # "$i$a$-indexOfFirst-DebugProbesImpl$enhanceStackTraceWithThreadDumpImpl$indexOfResumeWith$1":I
    if-eqz v9, :cond_4

    .line 658
    goto :goto_3

    .line 656
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 661
    .end local v3    # "index$iv":I
    :cond_5
    move v3, v5

    .line 347
    .end local v1    # "$this$indexOfFirst$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$indexOfFirst":I
    :goto_3
    move v1, v3

    .line 353
    .local v1, "indexOfResumeWith":I
    nop

    .line 354
    nop

    .line 355
    nop

    .line 356
    nop

    .line 353
    invoke-direct {p0, v1, v0, p3}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->findContinuationStartIndex(I[Ljava/lang/StackTraceElement;Ljava/util/List;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .local v3, "continuationStartFrame":I
    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 359
    .local v2, "delta":I
    if-ne v3, v5, :cond_6

    return-object p3

    .line 361
    :cond_6
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v1

    sub-int/2addr v4, v3

    sub-int/2addr v4, v6

    sub-int/2addr v4, v2

    .line 362
    .local v4, "expectedSize":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 363
    .local v5, "result":Ljava/util/ArrayList;
    const/4 v6, 0x0

    .local v6, "index":I
    sub-int v7, v1, v2

    :goto_4
    if-ge v6, v7, :cond_7

    .line 364
    move-object v8, v5

    check-cast v8, Ljava/util/Collection;

    aget-object v9, v0, v6

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 363
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 367
    .end local v6    # "index":I
    :cond_7
    add-int/lit8 v6, v3, 0x1

    .restart local v6    # "index":I
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    :goto_5
    if-ge v6, v7, :cond_8

    .line 368
    move-object v8, v5

    check-cast v8, Ljava/util/Collection;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 367
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 371
    .end local v6    # "index":I
    :cond_8
    move-object v6, v5

    check-cast v6, Ljava/util/List;

    return-object v6

    .line 326
    .end local v0    # "actualTrace":[Ljava/lang/StackTraceElement;
    .end local v1    # "indexOfResumeWith":I
    .end local v2    # "delta":I
    .end local v3    # "continuationStartFrame":I
    .end local v4    # "expectedSize":I
    .end local v5    # "result":Ljava/util/ArrayList;
    :cond_9
    :goto_6
    return-object p3
.end method

.method private final findContinuationStartIndex(I[Ljava/lang/StackTraceElement;Ljava/util/List;)Lkotlin/Pair;
    .locals 7
    .param p1, "indexOfResumeWith"    # I
    .param p2, "actualTrace"    # [Ljava/lang/StackTraceElement;
    .param p3, "coroutineTrace"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/StackTraceElement;",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 393
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, -0x1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    move v3, v1

    .local v3, "it":I
    const/4 v4, 0x0

    .line 394
    .local v4, "$i$a$-repeat-DebugProbesImpl$findContinuationStartIndex$1":I
    sget-object v5, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    add-int/lit8 v6, p1, -0x1

    sub-int/2addr v6, v3

    invoke-direct {v5, v6, p2, p3}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->findIndexOfFrame(I[Ljava/lang/StackTraceElement;Ljava/util/List;)I

    move-result v5

    .line 395
    .local v5, "result":I
    if-eq v5, v2, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0

    .line 396
    :cond_0
    nop

    .line 393
    .end local v3    # "it":I
    .end local v4    # "$i$a$-repeat-DebugProbesImpl$findContinuationStartIndex$1":I
    .end local v5    # "result":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method private final findIndexOfFrame(I[Ljava/lang/StackTraceElement;Ljava/util/List;)I
    .locals 11
    .param p1, "frameIndex"    # I
    .param p2, "actualTrace"    # [Ljava/lang/StackTraceElement;
    .param p3, "coroutineTrace"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/StackTraceElement;",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;)I"
        }
    .end annotation

    .line 405
    invoke-static {p2, p1}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StackTraceElement;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 406
    return v1

    .line 408
    .local v0, "continuationFrame":Ljava/lang/StackTraceElement;
    :cond_0
    move-object v2, p3

    .local v2, "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 662
    .local v3, "$i$f$indexOfFirst":I
    const/4 v4, 0x0

    .line 663
    .local v4, "index$iv":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 664
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/StackTraceElement;

    .local v7, "it":Ljava/lang/StackTraceElement;
    const/4 v8, 0x0

    .line 409
    .local v8, "$i$a$-indexOfFirst-DebugProbesImpl$findIndexOfFrame$1":I
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 410
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 411
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 409
    :goto_1
    nop

    .line 664
    .end local v7    # "it":Ljava/lang/StackTraceElement;
    .end local v8    # "$i$a$-indexOfFirst-DebugProbesImpl$findIndexOfFrame$1":I
    if-eqz v9, :cond_2

    .line 665
    move v1, v4

    goto :goto_2

    .line 666
    :cond_2
    nop

    .end local v6    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 668
    :cond_3
    nop

    .line 408
    .end local v2    # "$this$indexOfFirst$iv":Ljava/util/List;
    .end local v3    # "$i$f$indexOfFirst":I
    .end local v4    # "index$iv":I
    :goto_2
    return v1
.end method

.method private final getCapturedCoroutines()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner<",
            "*>;>;"
        }
    .end annotation

    .line 29
    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->capturedCoroutinesMap:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-virtual {v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private final getDebugString(Lkotlinx/coroutines/Job;)Ljava/lang/String;
    .locals 1
    .param p1, "$this$debugString"    # Lkotlinx/coroutines/Job;

    .line 137
    instance-of v0, p1, Lkotlinx/coroutines/JobSupport;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/JobSupport;

    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->toDebugString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static synthetic getDebugString$annotations(Lkotlinx/coroutines/Job;)V
    .locals 0

    return-void
.end method

.method private final getDynamicAttach()Lkotlin/jvm/functions/Function1;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 52
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    .local v0, "$this$getDynamicAttach_u24lambda_u240":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    const/4 v1, 0x0

    .line 53
    .local v1, "$i$a$-runCatching-DebugProbesImpl$getDynamicAttach$1":I
    const-string v2, "kotlinx.coroutines.debug.internal.ByteBuddyDynamicAttach"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 54
    .local v2, "clz":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 55
    .local v3, "ctor":Ljava/lang/reflect/Constructor;
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.Function1<kotlin.Boolean, kotlin.Unit>"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 52
    .end local v0    # "$this$getDynamicAttach_u24lambda_u240":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .end local v1    # "$i$a$-runCatching-DebugProbesImpl$getDynamicAttach$1":I
    .end local v2    # "clz":Ljava/lang/Class;
    .end local v3    # "ctor":Ljava/lang/reflect/Constructor;
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method private final isFinished(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;)Z
    .locals 3
    .param p1, "$this$isFinished"    # Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner<",
            "*>;)Z"
        }
    .end annotation

    .line 267
    iget-object v0, p1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;->info:Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v2, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v2, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    if-nez v0, :cond_0

    goto :goto_0

    .line 268
    .local v0, "job":Lkotlinx/coroutines/Job;
    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 269
    :cond_1
    sget-object v1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->capturedCoroutinesMap:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const/4 v1, 0x1

    return v1

    .line 267
    .end local v0    # "job":Lkotlinx/coroutines/Job;
    :cond_2
    :goto_0
    return v1
.end method

.method private final isInternalMethod(Ljava/lang/StackTraceElement;)Z
    .locals 5
    .param p1, "$this$isInternalMethod"    # Ljava/lang/StackTraceElement;

    .line 591
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "kotlinx.coroutines"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final owner(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    .locals 2
    .param p1, "$this$owner"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner<",
            "*>;"
        }
    .end annotation

    .line 466
    instance-of v0, p1, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->owner(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private final owner(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    .locals 1
    .param p1, "$this$owner"    # Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
            ")",
            "Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner<",
            "*>;"
        }
    .end annotation

    .line 469
    nop

    :goto_0
    instance-of v0, p1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;->getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private final printStackTrace(Ljava/io/PrintStream;Ljava/util/List;)V
    .locals 8
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "frames"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;)V"
        }
    .end annotation

    .line 299
    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 654
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/lang/StackTraceElement;

    .local v4, "frame":Ljava/lang/StackTraceElement;
    const/4 v5, 0x0

    .line 300
    .local v5, "$i$a$-forEach-DebugProbesImpl$printStackTrace$1":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n\tat "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 301
    nop

    .line 654
    .end local v4    # "frame":Ljava/lang/StackTraceElement;
    .end local v5    # "$i$a$-forEach-DebugProbesImpl$printStackTrace$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 655
    :cond_0
    nop

    .line 302
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method private final probeCoroutineCompleted(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;)V
    .locals 2
    .param p1, "owner"    # Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner<",
            "*>;)V"
        }
    .end annotation

    .line 512
    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->capturedCoroutinesMap:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    iget-object v0, p1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;->info:Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->getLastObservedFrame$kotlinx_coroutines_core()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->realCaller(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 518
    .local v0, "caller":Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    :cond_0
    sget-object v1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->callerInfoCache:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    return-void

    .line 517
    .end local v0    # "caller":Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    :cond_1
    :goto_0
    return-void
.end method

.method private final realCaller(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 2
    .param p1, "$this$realCaller"    # Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    .line 457
    nop

    :goto_0
    invoke-interface {p1}, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;->getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 458
    .local v0, "caller":Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    :cond_0
    invoke-interface {v0}, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;->getStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    move-object p1, v0

    goto :goto_0
.end method

.method private final sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 11
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .line 545
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 546
    .local v0, "stackTrace":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    .line 547
    .local v1, "size":I
    move-object v2, v0

    .local v2, "$this$indexOfLast$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 677
    .local v3, "$i$f$indexOfLast":I
    array-length v4, v2

    const/4 v5, -0x1

    add-int/2addr v4, v5

    if-ltz v4, :cond_2

    :cond_0
    move v6, v4

    .local v6, "index$iv":I
    add-int/2addr v4, v5

    .line 678
    aget-object v7, v2, v6

    .local v7, "it":Ljava/lang/StackTraceElement;
    const/4 v8, 0x0

    .line 547
    .local v8, "$i$a$-indexOfLast-DebugProbesImpl$sanitizeStackTrace$traceStart$1":I
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "kotlin.coroutines.jvm.internal.DebugProbesKt"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .line 678
    .end local v7    # "it":Ljava/lang/StackTraceElement;
    .end local v8    # "$i$a$-indexOfLast-DebugProbesImpl$sanitizeStackTrace$traceStart$1":I
    if-eqz v7, :cond_1

    .line 679
    move v5, v6

    goto :goto_0

    .line 677
    :cond_1
    if-gez v4, :cond_0

    .line 682
    .end local v6    # "index$iv":I
    :cond_2
    nop

    .line 547
    .end local v2    # "$this$indexOfLast$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$indexOfLast":I
    :goto_0
    const/4 v2, 0x1

    add-int/2addr v5, v2

    .line 549
    .local v5, "traceStart":I
    sget-boolean v3, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->sanitizeStackTraces:Z

    if-nez v3, :cond_4

    .line 550
    sub-int v2, v1, v5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_3

    .line 610
    move v6, v4

    .local v6, "it":I
    const/4 v7, 0x0

    .line 550
    .local v7, "$i$a$-List-DebugProbesImpl$sanitizeStackTrace$1":I
    add-int v8, v6, v5

    aget-object v6, v0, v8

    .end local v6    # "it":I
    .end local v7    # "$i$a$-List-DebugProbesImpl$sanitizeStackTrace$1":I
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    check-cast v3, Ljava/util/List;

    return-object v3

    .line 561
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    sub-int v4, v1, v5

    add-int/2addr v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v3

    .line 562
    .local v2, "result":Ljava/util/ArrayList;
    move v3, v5

    .line 563
    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_9

    .line 564
    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInternalMethod(Ljava/lang/StackTraceElement;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 565
    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    aget-object v6, v0, v3

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 567
    add-int/lit8 v4, v3, 0x1

    .line 568
    .local v4, "j":I
    :goto_3
    if-ge v4, v1, :cond_5

    aget-object v6, v0, v4

    invoke-direct {p0, v6}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInternalMethod(Ljava/lang/StackTraceElement;)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v4, v4, 0x1

    .line 569
    goto :goto_3

    .line 572
    :cond_5
    add-int/lit8 v6, v4, -0x1

    .line 573
    .local v6, "k":I
    :goto_4
    if-le v6, v3, :cond_6

    aget-object v7, v0, v6

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    add-int/lit8 v6, v6, -0x1

    .line 574
    goto :goto_4

    .line 576
    :cond_6
    if-le v6, v3, :cond_7

    add-int/lit8 v7, v4, -0x1

    if-ge v6, v7, :cond_7

    .line 579
    move-object v7, v2

    check-cast v7, Ljava/util/Collection;

    aget-object v8, v0, v6

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 581
    :cond_7
    move-object v7, v2

    check-cast v7, Ljava/util/Collection;

    add-int/lit8 v8, v4, -0x1

    aget-object v8, v0, v8

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 582
    move v3, v4

    .end local v4    # "j":I
    .end local v6    # "k":I
    goto :goto_2

    .line 584
    :cond_8
    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    aget-object v6, v0, v3

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    .line 585
    goto :goto_2

    .line 588
    :cond_9
    move-object v4, v2

    check-cast v4, Ljava/util/List;

    return-object v4
.end method

.method private final startWeakRefCleanerThread()V
    .locals 9

    .line 89
    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$startWeakRefCleanerThread$1;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl$startWeakRefCleanerThread$1;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/16 v7, 0x15

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "Coroutines Debugger Cleaner"

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->weakRefCleanerThread:Ljava/lang/Thread;

    .line 92
    return-void
.end method

.method private final stopWeakRefCleanerThread()V
    .locals 2

    .line 95
    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->weakRefCleanerThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    return-void

    .line 96
    .local v0, "thread":Ljava/lang/Thread;
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->weakRefCleanerThread:Ljava/lang/Thread;

    .line 97
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 98
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 99
    return-void
.end method

.method private final toStackTraceFrame(Ljava/util/List;)Lkotlinx/coroutines/debug/internal/StackTraceFrame;
    .locals 10
    .param p1, "$this$toStackTraceFrame"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;)",
            "Lkotlinx/coroutines/debug/internal/StackTraceFrame;"
        }
    .end annotation

    .line 495
    nop

    .line 496
    const/4 v0, 0x0

    .local v0, "initial$iv":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "$this$foldRight$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 669
    .local v2, "$i$f$foldRight":I
    move-object v3, v0

    .line 670
    .local v3, "accumulator$iv":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 671
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 672
    .local v4, "iterator$iv":Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 673
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StackTraceElement;

    .local v5, "frame":Ljava/lang/StackTraceElement;
    move-object v6, v3

    .local v6, "acc":Lkotlinx/coroutines/debug/internal/StackTraceFrame;
    const/4 v7, 0x0

    .line 497
    .local v7, "$i$a$-foldRight-DebugProbesImpl$toStackTraceFrame$1":I
    new-instance v8, Lkotlinx/coroutines/debug/internal/StackTraceFrame;

    move-object v9, v6

    check-cast v9, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-direct {v8, v9, v5}, Lkotlinx/coroutines/debug/internal/StackTraceFrame;-><init>(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;Ljava/lang/StackTraceElement;)V

    .line 673
    .end local v5    # "frame":Ljava/lang/StackTraceElement;
    .end local v6    # "acc":Lkotlinx/coroutines/debug/internal/StackTraceFrame;
    .end local v7    # "$i$a$-foldRight-DebugProbesImpl$toStackTraceFrame$1":I
    move-object v3, v8

    goto :goto_0

    .line 676
    .end local v4    # "iterator$iv":Ljava/util/ListIterator;
    :cond_0
    nop

    .end local v0    # "initial$iv":Ljava/lang/Object;
    .end local v1    # "$this$foldRight$iv":Ljava/util/List;
    .end local v2    # "$i$f$foldRight":I
    .end local v3    # "accumulator$iv":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    .line 498
    sget-object v1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->ARTIFICIAL_FRAME:Ljava/lang/StackTraceElement;

    .line 495
    new-instance v2, Lkotlinx/coroutines/debug/internal/StackTraceFrame;

    invoke-direct {v2, v0, v1}, Lkotlinx/coroutines/debug/internal/StackTraceFrame;-><init>(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;Ljava/lang/StackTraceElement;)V

    .line 499
    return-object v2
.end method

.method private final toStringRepr(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "$this$toStringRepr"    # Ljava/lang/Object;

    .line 232
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/debug/internal/DebugProbesImplKt;->access$repr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final updateRunningState(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;Ljava/lang/String;)V
    .locals 5
    .param p1, "frame"    # Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .param p2, "state"    # Ljava/lang/String;

    .line 435
    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInstalled$kotlinx_coroutines_core()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 438
    .local v0, "info":Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;
    sget-object v1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->callerInfoCache:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;

    .local v1, "cached":Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;
    const/4 v2, 0x0

    .line 440
    .local v2, "shouldBeMatchedWithProbeSuspended":Z
    if-eqz v1, :cond_1

    .line 441
    move-object v0, v1

    .line 442
    const/4 v2, 0x0

    goto :goto_1

    .line 444
    :cond_1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->owner(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, v3, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;->info:Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v3

    .line 445
    const/4 v2, 0x1

    .line 447
    invoke-virtual {v0}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->getLastObservedFrame$kotlinx_coroutines_core()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v3}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->realCaller(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 448
    .local v3, "realCaller":Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    :goto_0
    if-eqz v3, :cond_4

    sget-object v4, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->callerInfoCache:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-virtual {v4, v3}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    .end local v3    # "realCaller":Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    :cond_4
    :goto_1
    const-string v3, "null cannot be cast to non-null type kotlin.coroutines.Continuation<*>"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p1

    check-cast v3, Lkotlin/coroutines/Continuation;

    invoke-virtual {v0, p2, v3, v2}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->updateState$kotlinx_coroutines_core(Ljava/lang/String;Lkotlin/coroutines/Continuation;Z)V

    .line 452
    invoke-direct {p0, p1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->realCaller(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    move-result-object v3

    if-nez v3, :cond_5

    return-void

    .line 453
    .local v3, "caller":Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    :cond_5
    sget-object v4, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->callerInfoCache:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    return-void

    .line 444
    .end local v3    # "caller":Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    :cond_6
    :goto_2
    return-void
.end method

.method private final updateState(Lkotlin/coroutines/Continuation;Ljava/lang/String;)V
    .locals 4
    .param p1, "frame"    # Lkotlin/coroutines/Continuation;
    .param p2, "state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInstalled$kotlinx_coroutines_core()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 422
    :cond_0
    const-string v0, "RUNNING"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lkotlin/KotlinVersion;->CURRENT:Lkotlin/KotlinVersion;

    const/4 v1, 0x3

    const/16 v2, 0x1e

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lkotlin/KotlinVersion;->isAtLeast(III)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 423
    instance-of v0, p1, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 424
    .local v0, "stackFrame":Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    :cond_2
    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->updateRunningState(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;Ljava/lang/String;)V

    .line 425
    return-void

    .line 429
    .end local v0    # "stackFrame":Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    :cond_3
    invoke-direct {p0, p1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->owner(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 430
    .local v0, "owner":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    :cond_4
    invoke-direct {p0, v0, p1, p2}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->updateState(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;Lkotlin/coroutines/Continuation;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method private final updateState(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;Lkotlin/coroutines/Continuation;Ljava/lang/String;)V
    .locals 2
    .param p1, "owner"    # Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    .param p2, "frame"    # Lkotlin/coroutines/Continuation;
    .param p3, "state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner<",
            "*>;",
            "Lkotlin/coroutines/Continuation<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 462
    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInstalled$kotlinx_coroutines_core()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 463
    :cond_0
    iget-object v0, p1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;->info:Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, p2, v1}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;->updateState$kotlinx_coroutines_core(Ljava/lang/String;Lkotlin/coroutines/Continuation;Z)V

    .line 464
    return-void
.end method


# virtual methods
.method public final dumpCoroutines(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 247
    monitor-enter p1

    const/4 v0, 0x0

    .line 255
    .local v0, "$i$a$-synchronized-DebugProbesImpl$dumpCoroutines$1":I
    :try_start_0
    sget-object v1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->dumpCoroutinesSynchronized(Ljava/io/PrintStream;)V

    .line 256
    nop

    .end local v0    # "$i$a$-synchronized-DebugProbesImpl$dumpCoroutines$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit p1

    .line 256
    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public final dumpCoroutinesInfo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;",
            ">;"
        }
    .end annotation

    .line 238
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    const/4 v1, 0x0

    .line 627
    .local v1, "$i$f$dumpCoroutinesInfoImpl":I
    invoke-virtual {v0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInstalled$kotlinx_coroutines_core()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 629
    invoke-direct {v0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->getCapturedCoroutines()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 630
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v2

    .line 632
    nop

    .local v2, "$this$sortedBy$iv$iv":Lkotlin/sequences/Sequence;
    const/4 v3, 0x0

    .line 633
    .local v3, "$i$f$sortedBy":I
    new-instance v4, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesInfoImpl$$inlined$sortedBy$1;

    invoke-direct {v4}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesInfoImpl$$inlined$sortedBy$1;-><init>()V

    check-cast v4, Ljava/util/Comparator;

    invoke-static {v2, v4}, Lkotlin/sequences/SequencesKt;->sortedWith(Lkotlin/sequences/Sequence;Ljava/util/Comparator;)Lkotlin/sequences/Sequence;

    move-result-object v2

    .line 634
    .end local v2    # "$this$sortedBy$iv$iv":Lkotlin/sequences/Sequence;
    .end local v3    # "$i$f$sortedBy":I
    new-instance v3, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesInfo$$inlined$dumpCoroutinesInfoImpl$1;

    invoke-direct {v3}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesInfo$$inlined$dumpCoroutinesInfoImpl$1;-><init>()V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v3}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v2

    .line 638
    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v2

    .line 629
    nop

    .line 238
    .end local v0    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .end local v1    # "$i$f$dumpCoroutinesInfoImpl":I
    return-object v2

    .line 628
    .restart local v0    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .restart local v1    # "$i$f$dumpCoroutinesInfoImpl":I
    :cond_0
    const/4 v2, 0x0

    .line 627
    .local v2, "$i$a$-check-DebugProbesImpl$dumpCoroutinesInfoImpl$1$iv":I
    nop

    .end local v2    # "$i$a$-check-DebugProbesImpl$dumpCoroutinesInfoImpl$1$iv":I
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Debug probes are not installed"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final dumpCoroutinesInfoAsJsonAndReferences()[Ljava/lang/Object;
    .locals 15

    .line 178
    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->dumpCoroutinesInfo()Ljava/util/List;

    move-result-object v0

    .line 179
    .local v0, "coroutinesInfo":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 180
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 181
    .local v2, "lastObservedThreads":Ljava/util/ArrayList;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 182
    .local v3, "lastObservedFrames":Ljava/util/ArrayList;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    .local v4, "coroutinesInfoAsJson":Ljava/util/ArrayList;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;

    .line 184
    .local v6, "info":Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;
    invoke-virtual {v6}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v7

    .line 185
    .local v7, "context":Lkotlin/coroutines/CoroutineContext;
    sget-object v8, Lkotlinx/coroutines/CoroutineName;->Key:Lkotlinx/coroutines/CoroutineName$Key;

    check-cast v8, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v7, v8}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v8

    check-cast v8, Lkotlinx/coroutines/CoroutineName;

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lkotlinx/coroutines/CoroutineName;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-direct {p0, v8}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->toStringRepr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_0
    move-object v8, v9

    .line 186
    .local v8, "name":Ljava/lang/String;
    :goto_1
    sget-object v10, Lkotlinx/coroutines/CoroutineDispatcher;->Key:Lkotlinx/coroutines/CoroutineDispatcher$Key;

    check-cast v10, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v7, v10}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v10

    check-cast v10, Lkotlinx/coroutines/CoroutineDispatcher;

    if-eqz v10, :cond_1

    invoke-direct {p0, v10}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->toStringRepr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_1
    move-object v10, v9

    .line 187
    .local v10, "dispatcher":Ljava/lang/String;
    :goto_2
    nop

    .line 188
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\n                {\n                    \"name\": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 190
    nop

    .line 188
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 190
    nop

    .line 188
    const-string v12, ",\n                    \"id\": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 191
    sget-object v12, Lkotlinx/coroutines/CoroutineId;->Key:Lkotlinx/coroutines/CoroutineId$Key;

    check-cast v12, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v7, v12}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v12

    check-cast v12, Lkotlinx/coroutines/CoroutineId;

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Lkotlinx/coroutines/CoroutineId;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 188
    :cond_2
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 191
    nop

    .line 188
    const-string v11, ",\n                    \"dispatcher\": "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 192
    nop

    .line 188
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 192
    nop

    .line 188
    const-string v11, ",\n                    \"sequenceNumber\": "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 193
    invoke-virtual {v6}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;->getSequenceNumber()J

    move-result-wide v11

    .line 188
    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 193
    nop

    .line 188
    const-string v11, ",\n                    \"state\": \""

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 194
    invoke-virtual {v6}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;->getState()Ljava/lang/String;

    move-result-object v11

    .line 188
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 194
    nop

    .line 188
    const-string v11, "\"\n                } \n                "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 196
    invoke-static {v9}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 187
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {v6}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;->getLastObservedFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual {v6}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;->getLastObservedThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 203
    .end local v6    # "info":Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;
    .end local v7    # "context":Lkotlin/coroutines/CoroutineContext;
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "dispatcher":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Ljava/lang/Iterable;

    const/16 v13, 0x3f

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v14}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 204
    move-object v6, v2

    check-cast v6, Ljava/util/Collection;

    .local v6, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v7, 0x0

    .line 621
    .local v7, "$i$f$toTypedArray":I
    move-object v8, v6

    .line 622
    .local v8, "thisCollection$iv":Ljava/util/Collection;
    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Thread;

    invoke-interface {v8, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .line 203
    .end local v6    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v7    # "$i$f$toTypedArray":I
    .end local v8    # "thisCollection$iv":Ljava/util/Collection;
    nop

    .line 205
    move-object v7, v3

    check-cast v7, Ljava/util/Collection;

    .local v7, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v8, 0x0

    .line 623
    .local v8, "$i$f$toTypedArray":I
    move-object v10, v7

    .line 624
    .local v10, "thisCollection$iv":Ljava/util/Collection;
    new-array v11, v9, [Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-interface {v10, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .line 203
    .end local v7    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v8    # "$i$f$toTypedArray":I
    .end local v10    # "thisCollection$iv":Ljava/util/Collection;
    nop

    .line 206
    move-object v8, v0

    check-cast v8, Ljava/util/Collection;

    .local v8, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v10, 0x0

    .line 625
    .local v10, "$i$f$toTypedArray":I
    move-object v11, v8

    .line 626
    .local v11, "thisCollection$iv":Ljava/util/Collection;
    new-array v9, v9, [Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;

    invoke-interface {v11, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v10    # "$i$f$toTypedArray":I
    .end local v11    # "thisCollection$iv":Ljava/util/Collection;
    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v5

    .line 203
    nop

    .line 202
    return-object v5
.end method

.method public final dumpDebuggerInfo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlinx/coroutines/debug/internal/DebuggerInfo;",
            ">;"
        }
    .end annotation

    .line 245
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    const/4 v1, 0x0

    .line 639
    .local v1, "$i$f$dumpCoroutinesInfoImpl":I
    invoke-virtual {v0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInstalled$kotlinx_coroutines_core()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 641
    invoke-direct {v0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->getCapturedCoroutines()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 642
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v2

    .line 644
    nop

    .local v2, "$this$sortedBy$iv$iv":Lkotlin/sequences/Sequence;
    const/4 v3, 0x0

    .line 645
    .local v3, "$i$f$sortedBy":I
    new-instance v4, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesInfoImpl$$inlined$sortedBy$1;

    invoke-direct {v4}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesInfoImpl$$inlined$sortedBy$1;-><init>()V

    check-cast v4, Ljava/util/Comparator;

    invoke-static {v2, v4}, Lkotlin/sequences/SequencesKt;->sortedWith(Lkotlin/sequences/Sequence;Ljava/util/Comparator;)Lkotlin/sequences/Sequence;

    move-result-object v2

    .line 646
    .end local v2    # "$this$sortedBy$iv$iv":Lkotlin/sequences/Sequence;
    .end local v3    # "$i$f$sortedBy":I
    new-instance v3, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpDebuggerInfo$$inlined$dumpCoroutinesInfoImpl$1;

    invoke-direct {v3}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpDebuggerInfo$$inlined$dumpCoroutinesInfoImpl$1;-><init>()V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v3}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v2

    .line 650
    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v2

    .line 641
    nop

    .line 245
    .end local v0    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .end local v1    # "$i$f$dumpCoroutinesInfoImpl":I
    return-object v2

    .line 640
    .restart local v0    # "this_$iv":Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
    .restart local v1    # "$i$f$dumpCoroutinesInfoImpl":I
    :cond_0
    const/4 v2, 0x0

    .line 639
    .local v2, "$i$a$-check-DebugProbesImpl$dumpCoroutinesInfoImpl$1$iv":I
    nop

    .end local v2    # "$i$a$-check-DebugProbesImpl$dumpCoroutinesInfoImpl$1$iv":I
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Debug probes are not installed"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final enhanceStackTraceWithThreadDump(Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1, "info"    # Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;
    .param p2, "coroutineTrace"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .line 313
    invoke-virtual {p1}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;->getLastObservedThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->enhanceStackTraceWithThreadDumpImpl(Ljava/lang/String;Ljava/lang/Thread;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final enhanceStackTraceWithThreadDumpAsJson(Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;)Ljava/lang/String;
    .locals 12
    .param p1, "info"    # Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;

    .line 214
    invoke-virtual {p1}, Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;->lastObservedStackTrace()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->enhanceStackTraceWithThreadDump(Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 215
    .local v0, "stackTraceElements":Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 216
    .local v1, "stackTraceElementsInfoAsJson":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/StackTraceElement;

    .line 217
    .local v3, "element":Ljava/lang/StackTraceElement;
    nop

    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n                {\n                    \"declaringClass\": \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 220
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 218
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 220
    nop

    .line 218
    const-string v5, "\",\n                    \"methodName\": \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 221
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    .line 218
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 221
    nop

    .line 218
    const-string v5, "\",\n                    \"fileName\": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 222
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v5}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->toStringRepr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 218
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 222
    nop

    .line 218
    const-string v5, ",\n                    \"lineNumber\": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 223
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    .line 218
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 223
    nop

    .line 218
    const-string v5, "\n                }\n                "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 225
    invoke-static {v4}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    .end local v3    # "element":Ljava/lang/StackTraceElement;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    const/16 v10, 0x3f

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final getEnableCreationStackTraces()Z
    .locals 1

    .line 43
    sget-boolean v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->enableCreationStackTraces:Z

    return v0
.end method

.method public final getSanitizeStackTraces()Z
    .locals 1

    .line 42
    sget-boolean v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->sanitizeStackTraces:Z

    return v0
.end method

.method public final hierarchyToString(Lkotlinx/coroutines/Job;)Ljava/lang/String;
    .locals 11
    .param p1, "job"    # Lkotlinx/coroutines/Job;

    .line 102
    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInstalled$kotlinx_coroutines_core()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->getCapturedCoroutines()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 104
    nop

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 611
    .local v1, "$i$f$filter":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 612
    .local v4, "$i$f$filterTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    .local v7, "it":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    const/4 v8, 0x0

    .line 104
    .local v8, "$i$a$-filter-DebugProbesImpl$hierarchyToString$jobToStack$1":I
    iget-object v9, v7, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;->delegate:Lkotlin/coroutines/Continuation;

    invoke-interface {v9}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v9

    sget-object v10, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v10, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v9, v10}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 612
    .end local v7    # "it":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    .end local v8    # "$i$a$-filter-DebugProbesImpl$hierarchyToString$jobToStack$1":I
    :goto_1
    if-eqz v9, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 613
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterTo":I
    check-cast v2, Ljava/util/List;

    .line 611
    nop

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filter":I
    check-cast v2, Ljava/lang/Iterable;

    .line 105
    move-object v0, v2

    .local v0, "$this$associateBy$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 614
    .local v1, "$i$f$associateBy":I
    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    .line 615
    .local v2, "capacity$iv":I
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    .local v3, "destination$iv$iv":Ljava/util/Map;
    move-object v4, v0

    .local v4, "$this$associateByTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 616
    .local v5, "$i$f$associateByTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 617
    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    .local v8, "it":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    const/4 v9, 0x0

    .line 105
    .local v9, "$i$a$-associateBy-DebugProbesImpl$hierarchyToString$jobToStack$2":I
    iget-object v10, v8, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;->delegate:Lkotlin/coroutines/Continuation;

    invoke-interface {v10}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v10

    invoke-static {v10}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object v8

    .line 617
    .end local v8    # "it":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    .end local v9    # "$i$a$-associateBy-DebugProbesImpl$hierarchyToString$jobToStack$2":I
    move-object v9, v7

    check-cast v9, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    .local v9, "it":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    const/4 v10, 0x0

    .line 105
    .local v10, "$i$a$-associateBy-DebugProbesImpl$hierarchyToString$jobToStack$3":I
    iget-object v9, v9, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;->info:Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;

    .line 617
    .end local v9    # "it":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    .end local v10    # "$i$a$-associateBy-DebugProbesImpl$hierarchyToString$jobToStack$3":I
    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 619
    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    :cond_3
    nop

    .line 615
    .end local v3    # "destination$iv$iv":Ljava/util/Map;
    .end local v4    # "$this$associateByTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$associateByTo":I
    nop

    .line 105
    .end local v0    # "$this$associateBy$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$associateBy":I
    .end local v2    # "capacity$iv":I
    nop

    .line 103
    move-object v0, v3

    .line 106
    .local v0, "jobToStack":Ljava/util/Map;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v1

    .local v2, "$this$hierarchyToString_u24lambda_u246":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 107
    .local v3, "$i$a$-buildString-DebugProbesImpl$hierarchyToString$2":I
    sget-object v4, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    const-string v5, ""

    invoke-direct {v4, p1, v0, v2, v5}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->build(Lkotlinx/coroutines/Job;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 108
    nop

    .line 106
    .end local v2    # "$this$hierarchyToString_u24lambda_u246":Ljava/lang/StringBuilder;
    .end local v3    # "$i$a$-buildString-DebugProbesImpl$hierarchyToString$2":I
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 610
    .end local v0    # "jobToStack":Ljava/util/Map;
    :cond_4
    const/4 v0, 0x0

    .line 102
    .local v0, "$i$a$-check-DebugProbesImpl$hierarchyToString$1":I
    nop

    .end local v0    # "$i$a$-check-DebugProbesImpl$hierarchyToString$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Debug probes are not installed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final install()V
    .locals 2

    .line 72
    invoke-static {}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$Installations$kotlinx$VolatileWrapper;->access$getInstallations$FU$p()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->installations$kotlinx$VolatileWrapper:Lkotlinx/coroutines/debug/internal/DebugProbesImpl$Installations$kotlinx$VolatileWrapper;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->startWeakRefCleanerThread()V

    .line 74
    sget-object v0, Lkotlinx/coroutines/debug/internal/AgentInstallationType;->INSTANCE:Lkotlinx/coroutines/debug/internal/AgentInstallationType;

    invoke-virtual {v0}, Lkotlinx/coroutines/debug/internal/AgentInstallationType;->isInstalledStatically$kotlinx_coroutines_core()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 75
    :cond_1
    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->dynamicAttach:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_2
    return-void
.end method

.method public final isInstalled$kotlinx_coroutines_core()Z
    .locals 2

    invoke-static {}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$Installations$kotlinx$VolatileWrapper;->access$getInstallations$FU$p()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->installations$kotlinx$VolatileWrapper:Lkotlinx/coroutines/debug/internal/DebugProbesImpl$Installations$kotlinx$VolatileWrapper;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 37
    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final probeCoroutineCreated$kotlinx_coroutines_core(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .param p1, "completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    .line 473
    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInstalled$kotlinx_coroutines_core()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 478
    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->owner(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;

    move-result-object v0

    .line 479
    .local v0, "owner":Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;
    if-eqz v0, :cond_1

    return-object p1

    .line 486
    :cond_1
    sget-boolean v1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->enableCreationStackTraces:Z

    if-eqz v1, :cond_2

    .line 487
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {p0, v1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->toStackTraceFrame(Ljava/util/List;)Lkotlinx/coroutines/debug/internal/StackTraceFrame;

    move-result-object v1

    goto :goto_0

    .line 489
    :cond_2
    const/4 v1, 0x0

    .line 486
    :goto_0
    nop

    .line 491
    .local v1, "frame":Lkotlinx/coroutines/debug/internal/StackTraceFrame;
    invoke-direct {p0, p1, v1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->createOwner(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/debug/internal/StackTraceFrame;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    return-object v2
.end method

.method public final probeCoroutineResumed$kotlinx_coroutines_core(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .param p1, "frame"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)V"
        }
    .end annotation

    .line 415
    const-string v0, "RUNNING"

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->updateState(Lkotlin/coroutines/Continuation;Ljava/lang/String;)V

    return-void
.end method

.method public final probeCoroutineSuspended$kotlinx_coroutines_core(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .param p1, "frame"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)V"
        }
    .end annotation

    .line 417
    const-string v0, "SUSPENDED"

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->updateState(Lkotlin/coroutines/Continuation;Ljava/lang/String;)V

    return-void
.end method

.method public final setEnableCreationStackTraces(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 43
    sput-boolean p1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->enableCreationStackTraces:Z

    return-void
.end method

.method public final setSanitizeStackTraces(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 42
    sput-boolean p1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->sanitizeStackTraces:Z

    return-void
.end method

.method public final uninstall()V
    .locals 2

    .line 79
    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInstalled$kotlinx_coroutines_core()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    invoke-static {}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$Installations$kotlinx$VolatileWrapper;->access$getInstallations$FU$p()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->installations$kotlinx$VolatileWrapper:Lkotlinx/coroutines/debug/internal/DebugProbesImpl$Installations$kotlinx$VolatileWrapper;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->stopWeakRefCleanerThread()V

    .line 82
    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->capturedCoroutinesMap:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-virtual {v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->clear()V

    .line 83
    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->callerInfoCache:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-virtual {v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->clear()V

    .line 84
    sget-object v0, Lkotlinx/coroutines/debug/internal/AgentInstallationType;->INSTANCE:Lkotlinx/coroutines/debug/internal/AgentInstallationType;

    invoke-virtual {v0}, Lkotlinx/coroutines/debug/internal/AgentInstallationType;->isInstalledStatically$kotlinx_coroutines_core()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 85
    :cond_1
    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->dynamicAttach:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_2
    return-void

    .line 610
    :cond_3
    const/4 v0, 0x0

    .line 79
    .local v0, "$i$a$-check-DebugProbesImpl$uninstall$1":I
    nop

    .end local v0    # "$i$a$-check-DebugProbesImpl$uninstall$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Agent was not installed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
