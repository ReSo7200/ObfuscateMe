.class public final Landroidx/test/platform/app/InstrumentationRegistry;
.super Ljava/lang/Object;
.source "InstrumentationRegistry.java"


# static fields
.field private static final arguments:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private static final instrumentationRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/app/Instrumentation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroidx/test/platform/app/InstrumentationRegistry;->instrumentationRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroidx/test/platform/app/InstrumentationRegistry;->arguments:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArguments()Landroid/os/Bundle;
    .locals 3

    .line 61
    sget-object v0, Landroidx/test/platform/app/InstrumentationRegistry;->arguments:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 62
    .local v0, "instance":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 67
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v1

    .line 63
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No instrumentation arguments registered! Are you running under an Instrumentation which registers arguments?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstrumentation()Landroid/app/Instrumentation;
    .locals 3

    .line 43
    sget-object v0, Landroidx/test/platform/app/InstrumentationRegistry;->instrumentationRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Instrumentation;

    .line 44
    .local v0, "instance":Landroid/app/Instrumentation;
    if-eqz v0, :cond_0

    .line 48
    return-object v0

    .line 45
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No instrumentation registered! Must run under a registering instrumentation."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static registerInstance(Landroid/app/Instrumentation;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "instrumentation"    # Landroid/app/Instrumentation;
    .param p1, "arguments"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instrumentation",
            "arguments"
        }
    .end annotation

    .line 80
    sget-object v0, Landroidx/test/platform/app/InstrumentationRegistry;->instrumentationRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 81
    sget-object v0, Landroidx/test/platform/app/InstrumentationRegistry;->arguments:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 82
    return-void
.end method
