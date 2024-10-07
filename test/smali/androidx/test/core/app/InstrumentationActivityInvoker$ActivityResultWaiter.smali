.class Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;
.super Ljava/lang/Object;
.source "InstrumentationActivityInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/core/app/InstrumentationActivityInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityResultWaiter"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activityResult:Landroid/app/Instrumentation$ActivityResult;

.field private final latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 242
    const-class v0, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 252
    new-instance v0, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter$1;

    invoke-direct {v0, p0}, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter$1;-><init>(Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;)V

    .line 273
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "androidx.test.core.app.InstrumentationActivityInvoker.BOOTSTRAP_ACTIVITY_RESULT_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 274
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "androidx.test.core.app.InstrumentationActivityInvoker.CANCEL_ACTIVITY_RESULT_WAITER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    invoke-static {p1, v0, v1}, Landroidx/test/core/app/InstrumentationActivityInvoker;->access$000(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 276
    return-void
.end method

.method static synthetic access$202(Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;Landroid/app/Instrumentation$ActivityResult;)Landroid/app/Instrumentation$ActivityResult;
    .locals 0
    .param p0, "x0"    # Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;
    .param p1, "x1"    # Landroid/app/Instrumentation$ActivityResult;

    .line 240
    iput-object p1, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;->activityResult:Landroid/app/Instrumentation$ActivityResult;

    return-object p1
.end method

.method static synthetic access$300(Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;

    .line 240
    iget-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;->latch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method


# virtual methods
.method public getActivityResult()Landroid/app/Instrumentation$ActivityResult;
    .locals 4

    .line 286
    :try_start_0
    iget-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {}, Landroidx/test/internal/platform/app/ActivityLifecycleTimeout;->getMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;->TAG:Ljava/lang/String;

    const-string v2, "Waiting activity result was interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;->activityResult:Landroid/app/Instrumentation$ActivityResult;

    .line 293
    invoke-static {}, Landroidx/test/internal/platform/app/ActivityLifecycleTimeout;->getMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 290
    const-string v2, "onActivityResult never be called after %d milliseconds"

    invoke-static {v0, v2, v1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;->activityResult:Landroid/app/Instrumentation$ActivityResult;

    return-object v0
.end method
