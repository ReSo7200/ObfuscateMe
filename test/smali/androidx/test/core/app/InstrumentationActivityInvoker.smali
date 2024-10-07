.class Landroidx/test/core/app/InstrumentationActivityInvoker;
.super Ljava/lang/Object;
.source "InstrumentationActivityInvoker.java"

# interfaces
.implements Landroidx/test/internal/platform/app/ActivityInvoker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyFloatingActivity;,
        Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyActivity;,
        Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;,
        Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;
    }
.end annotation


# static fields
.field private static final BOOTSTRAP_ACTIVITY_RESULT_CODE_KEY:Ljava/lang/String; = "androidx.test.core.app.InstrumentationActivityInvoker.BOOTSTRAP_ACTIVITY_RESULT_CODE_KEY"

.field private static final BOOTSTRAP_ACTIVITY_RESULT_DATA_KEY:Ljava/lang/String; = "androidx.test.core.app.InstrumentationActivityInvoker.BOOTSTRAP_ACTIVITY_RESULT_DATA_KEY"

.field private static final BOOTSTRAP_ACTIVITY_RESULT_RECEIVED:Ljava/lang/String; = "androidx.test.core.app.InstrumentationActivityInvoker.BOOTSTRAP_ACTIVITY_RESULT_RECEIVED"

.field private static final CANCEL_ACTIVITY_RESULT_WAITER:Ljava/lang/String; = "androidx.test.core.app.InstrumentationActivityInvoker.CANCEL_ACTIVITY_RESULT_WAITER"

.field private static final EMPTY_ACTIVITY_RESUMED:Ljava/lang/String; = "androidx.test.core.app.InstrumentationActivityInvoker.EMPTY_ACTIVITY_RESUMED"

.field private static final EMPTY_FLOATING_ACTIVITY_RESUMED:Ljava/lang/String; = "androidx.test.core.app.InstrumentationActivityInvoker.EMPTY_FLOATING_ACTIVITY_RESUMED"

.field private static final FINISH_BOOTSTRAP_ACTIVITY:Ljava/lang/String; = "androidx.test.core.app.InstrumentationActivityInvoker.FINISH_BOOTSTRAP_ACTIVITY"

.field private static final FINISH_EMPTY_ACTIVITIES:Ljava/lang/String; = "androidx.test.core.app.InstrumentationActivityInvoker.FINISH_EMPTY_ACTIVITIES"

.field private static final TARGET_ACTIVITY_INTENT_KEY:Ljava/lang/String; = "androidx.test.core.app.InstrumentationActivityInvoker.START_TARGET_ACTIVITY_INTENT_KEY"

.field private static final TARGET_ACTIVITY_OPTIONS_BUNDLE_KEY:Ljava/lang/String; = "androidx.test.core.app.InstrumentationActivityInvoker.TARGET_ACTIVITY_OPTIONS_BUNDLE_KEY"


# instance fields
.field private activityResultWaiter:Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;


# direct methods
.method public static synthetic $r8$lambda$9gFKoOD658hEVTRbHVugW27g--w(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method public static synthetic $r8$lambda$A9Xye-wJ3E1idQIJVAcRV8mCn-Y(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;
    .param p2, "x2"    # Landroid/content/IntentFilter;

    .line 59
    invoke-static {p0, p1, p2}, Landroidx/test/core/app/InstrumentationActivityInvoker;->registerBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method static synthetic access$100(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Landroid/os/Bundle;

    .line 59
    invoke-static {p0}, Landroidx/test/core/app/InstrumentationActivityInvoker;->optInToGrantBalPrivileges(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static checkActivityStageIsIn(Landroid/app/Activity;Ljava/util/Set;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "expected"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Set<",
            "Landroidx/test/runner/lifecycle/Stage;",
            ">;)V"
        }
    .end annotation

    .line 628
    .local p1, "expected":Ljava/util/Set;, "Ljava/util/Set<Landroidx/test/runner/lifecycle/Stage;>;"
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    new-instance v1, Landroidx/test/core/app/InstrumentationActivityInvoker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/test/core/app/InstrumentationActivityInvoker$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Ljava/util/Set;)V

    .line 629
    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 639
    return-void
.end method

.method private static varargs checkActivityStageIsIn(Landroid/app/Activity;[Landroidx/test/runner/lifecycle/Stage;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "expected"    # [Landroidx/test/runner/lifecycle/Stage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "expected"
        }
    .end annotation

    .line 624
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0}, Landroidx/test/core/app/InstrumentationActivityInvoker;->checkActivityStageIsIn(Landroid/app/Activity;Ljava/util/Set;)V

    .line 625
    return-void
.end method

.method static synthetic lambda$checkActivityStageIsIn$0(Landroid/app/Activity;Ljava/util/Set;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "expected"    # Ljava/util/Set;

    .line 632
    invoke-static {}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitorRegistry;->getInstance()Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;->getLifecycleStageOf(Landroid/app/Activity;)Landroidx/test/runner/lifecycle/Stage;

    move-result-object v0

    .line 633
    .local v0, "stage":Landroidx/test/runner/lifecycle/Stage;
    nop

    .line 634
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v2

    .line 633
    const-string v3, "Activity\'s stage must be %s but was %s"

    invoke-static {v1, v3, v2}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 638
    return-void
.end method

.method private static optInToGrantBalPrivileges(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p0, "activityOptionsBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityOptionsBundle"
        }
    .end annotation

    .line 474
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_0

    .line 475
    return-object p0

    .line 479
    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 480
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 481
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 483
    .local v0, "updatedActivityOptions":Landroid/os/Bundle;
    if-eqz p0, :cond_1

    .line 484
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 486
    :cond_1
    return-object v0
.end method

.method private static registerBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "broadcastReceiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "intentFilter"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "broadcastReceiver",
            "intentFilter"
        }
    .end annotation

    .line 643
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    .line 644
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 646
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 648
    :goto_0
    return-void
.end method

.method private startEmptyActivitySync()V
    .locals 5

    .line 557
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 558
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Landroidx/test/core/app/InstrumentationActivityInvoker$2;

    invoke-direct {v1, p0, v0}, Landroidx/test/core/app/InstrumentationActivityInvoker$2;-><init>(Landroidx/test/core/app/InstrumentationActivityInvoker;Ljava/util/concurrent/CountDownLatch;)V

    .line 566
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    invoke-static {}, Landroidx/test/core/app/ApplicationProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "androidx.test.core.app.InstrumentationActivityInvoker.EMPTY_ACTIVITY_RESUMED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 565
    invoke-static {v2, v1, v3}, Landroidx/test/core/app/InstrumentationActivityInvoker;->registerBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 570
    invoke-static {}, Landroidx/test/core/app/ApplicationProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyActivity;

    .line 572
    invoke-virtual {p0, v3}, Landroidx/test/core/app/InstrumentationActivityInvoker;->getIntentForActivity(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 571
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 575
    :try_start_0
    invoke-static {}, Landroidx/test/internal/platform/app/ActivityLifecycleTimeout;->getMillis()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    invoke-static {}, Landroidx/test/core/app/ApplicationProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 580
    nop

    .line 581
    return-void

    .line 579
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 576
    :catch_0
    move-exception v2

    .line 577
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to stop activity"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v1    # "receiver":Landroid/content/BroadcastReceiver;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 579
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v1    # "receiver":Landroid/content/BroadcastReceiver;
    :goto_0
    invoke-static {}, Landroidx/test/core/app/ApplicationProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 580
    throw v2
.end method

.method private startFloatingEmptyActivitySync()V
    .locals 5

    .line 522
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 523
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Landroidx/test/core/app/InstrumentationActivityInvoker$1;

    invoke-direct {v1, p0, v0}, Landroidx/test/core/app/InstrumentationActivityInvoker$1;-><init>(Landroidx/test/core/app/InstrumentationActivityInvoker;Ljava/util/concurrent/CountDownLatch;)V

    .line 531
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    invoke-static {}, Landroidx/test/core/app/ApplicationProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "androidx.test.core.app.InstrumentationActivityInvoker.EMPTY_FLOATING_ACTIVITY_RESUMED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 530
    invoke-static {v2, v1, v3}, Landroidx/test/core/app/InstrumentationActivityInvoker;->registerBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 535
    invoke-static {}, Landroidx/test/core/app/ApplicationProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyFloatingActivity;

    .line 537
    invoke-virtual {p0, v3}, Landroidx/test/core/app/InstrumentationActivityInvoker;->getIntentForActivity(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    .line 538
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 536
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 541
    :try_start_0
    invoke-static {}, Landroidx/test/internal/platform/app/ActivityLifecycleTimeout;->getMillis()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    invoke-static {}, Landroidx/test/core/app/ApplicationProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 546
    nop

    .line 547
    return-void

    .line 545
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 542
    :catch_0
    move-exception v2

    .line 543
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to pause activity"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v1    # "receiver":Landroid/content/BroadcastReceiver;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 545
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v1    # "receiver":Landroid/content/BroadcastReceiver;
    :goto_0
    invoke-static {}, Landroidx/test/core/app/ApplicationProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 546
    throw v2
.end method


# virtual methods
.method public finishActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 610
    invoke-direct {p0}, Landroidx/test/core/app/InstrumentationActivityInvoker;->startEmptyActivitySync()V

    .line 611
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/test/core/app/InstrumentationActivityInvoker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Landroidx/test/core/app/InstrumentationActivityInvoker$$ExternalSyntheticLambda2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 612
    iget-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker;->activityResultWaiter:Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;

    if-eqz v0, :cond_0

    .line 613
    invoke-static {}, Landroidx/test/core/app/ApplicationProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "androidx.test.core.app.InstrumentationActivityInvoker.FINISH_BOOTSTRAP_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 614
    invoke-direct {p0}, Landroidx/test/core/app/InstrumentationActivityInvoker;->startEmptyActivitySync()V

    .line 615
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/test/core/app/InstrumentationActivityInvoker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Landroidx/test/core/app/InstrumentationActivityInvoker$$ExternalSyntheticLambda2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 617
    :cond_0
    invoke-static {}, Landroidx/test/core/app/ApplicationProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "androidx.test.core.app.InstrumentationActivityInvoker.FINISH_EMPTY_ACTIVITIES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 618
    iget-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker;->activityResultWaiter:Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;

    if-eqz v0, :cond_1

    .line 619
    invoke-static {}, Landroidx/test/core/app/ApplicationProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "androidx.test.core.app.InstrumentationActivityInvoker.CANCEL_ACTIVITY_RESULT_WAITER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 621
    :cond_1
    return-void
.end method

.method public getActivityResult()Landroid/app/Instrumentation$ActivityResult;
    .locals 2

    .line 496
    iget-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker;->activityResultWaiter:Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker;->activityResultWaiter:Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;

    invoke-virtual {v0}, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;->getActivityResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0

    .line 497
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must start Activity first. Make sure you are using launchActivityForResult() to launch an Activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pauseActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 517
    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/test/runner/lifecycle/Stage;

    const/4 v1, 0x0

    sget-object v2, Landroidx/test/runner/lifecycle/Stage;->RESUMED:Landroidx/test/runner/lifecycle/Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/test/runner/lifecycle/Stage;->PAUSED:Landroidx/test/runner/lifecycle/Stage;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Landroidx/test/core/app/InstrumentationActivityInvoker;->checkActivityStageIsIn(Landroid/app/Activity;[Landroidx/test/runner/lifecycle/Stage;)V

    .line 518
    invoke-direct {p0}, Landroidx/test/core/app/InstrumentationActivityInvoker;->startFloatingEmptyActivitySync()V

    .line 519
    return-void
.end method

.method public recreateActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 598
    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/test/runner/lifecycle/Stage;

    const/4 v1, 0x0

    sget-object v2, Landroidx/test/runner/lifecycle/Stage;->RESUMED:Landroidx/test/runner/lifecycle/Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/test/runner/lifecycle/Stage;->PAUSED:Landroidx/test/runner/lifecycle/Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroidx/test/runner/lifecycle/Stage;->STOPPED:Landroidx/test/runner/lifecycle/Stage;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Landroidx/test/core/app/InstrumentationActivityInvoker;->checkActivityStageIsIn(Landroid/app/Activity;[Landroidx/test/runner/lifecycle/Stage;)V

    .line 599
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/test/core/app/InstrumentationActivityInvoker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroidx/test/core/app/InstrumentationActivityInvoker$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 600
    return-void
.end method

.method public resumeActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 507
    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/test/runner/lifecycle/Stage;

    const/4 v1, 0x0

    sget-object v2, Landroidx/test/runner/lifecycle/Stage;->RESUMED:Landroidx/test/runner/lifecycle/Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/test/runner/lifecycle/Stage;->PAUSED:Landroidx/test/runner/lifecycle/Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroidx/test/runner/lifecycle/Stage;->STOPPED:Landroidx/test/runner/lifecycle/Stage;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Landroidx/test/core/app/InstrumentationActivityInvoker;->checkActivityStageIsIn(Landroid/app/Activity;[Landroidx/test/runner/lifecycle/Stage;)V

    .line 508
    invoke-static {}, Landroidx/test/core/app/ApplicationProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "androidx.test.core.app.InstrumentationActivityInvoker.FINISH_EMPTY_ACTIVITIES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 509
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 428
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/test/core/app/InstrumentationActivityInvoker;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 429
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "activityOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "activityOptions"
        }
    .end annotation

    .line 403
    invoke-static {}, Landroidx/test/core/app/ApplicationProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 404
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_2

    .line 409
    invoke-static {}, Landroidx/test/core/app/ApplicationProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "androidx.test.core.app.InstrumentationActivityInvoker.FINISH_BOOTSTRAP_ACTIVITY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 410
    invoke-static {}, Landroidx/test/core/app/ApplicationProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "androidx.test.core.app.InstrumentationActivityInvoker.FINISH_EMPTY_ACTIVITIES"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 412
    const v1, 0x10008000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 414
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_1

    .line 415
    if-nez p2, :cond_0

    .line 419
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Instrumentation;->startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;

    goto :goto_0

    .line 416
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Starting an activity with activityOptions is not supported on APIs below 28."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 422
    :cond_1
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/Instrumentation;->startActivitySync(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Activity;

    .line 424
    :goto_0
    return-void

    .line 405
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to resolve activity for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startActivityForResult(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 491
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/test/core/app/InstrumentationActivityInvoker;->startActivityForResult(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 492
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "activityOptionsBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "activityOptionsBundle"
        }
    .end annotation

    .line 435
    invoke-static {}, Landroidx/test/core/app/ApplicationProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 436
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_1

    .line 441
    invoke-static {}, Landroidx/test/core/app/ApplicationProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "androidx.test.core.app.InstrumentationActivityInvoker.FINISH_BOOTSTRAP_ACTIVITY"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 442
    invoke-static {}, Landroidx/test/core/app/ApplicationProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "androidx.test.core.app.InstrumentationActivityInvoker.FINISH_EMPTY_ACTIVITIES"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 444
    new-instance v2, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;

    invoke-static {}, Landroidx/test/core/app/ApplicationProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/test/core/app/InstrumentationActivityInvoker;->activityResultWaiter:Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;

    .line 446
    invoke-static {p2}, Landroidx/test/core/app/InstrumentationActivityInvoker;->optInToGrantBalPrivileges(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 450
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_0

    .line 451
    const/high16 v2, 0x4000000

    goto :goto_0

    .line 452
    :cond_0
    const/high16 v2, 0x2000000

    :goto_0
    nop

    .line 458
    .local v2, "intentMutability":I
    const-class v3, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;

    .line 459
    invoke-virtual {p0, v3}, Landroidx/test/core/app/InstrumentationActivityInvoker;->getIntentForActivity(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    .line 460
    const v4, 0x10008000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 464
    invoke-static {}, Landroidx/test/core/app/ApplicationProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x8000000

    or-int/2addr v5, v2

    .line 463
    invoke-static {v4, v1, p1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 461
    const-string v4, "androidx.test.core.app.InstrumentationActivityInvoker.START_TARGET_ACTIVITY_INTENT_KEY"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 468
    const-string v3, "androidx.test.core.app.InstrumentationActivityInvoker.TARGET_ACTIVITY_OPTIONS_BUNDLE_KEY"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 470
    .local v1, "bootstrapIntent":Landroid/content/Intent;
    invoke-static {}, Landroidx/test/core/app/ApplicationProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 471
    return-void

    .line 437
    .end local v1    # "bootstrapIntent":Landroid/content/Intent;
    .end local v2    # "intentMutability":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to resolve activity for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public stopActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 552
    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/test/runner/lifecycle/Stage;

    const/4 v1, 0x0

    sget-object v2, Landroidx/test/runner/lifecycle/Stage;->RESUMED:Landroidx/test/runner/lifecycle/Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/test/runner/lifecycle/Stage;->PAUSED:Landroidx/test/runner/lifecycle/Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroidx/test/runner/lifecycle/Stage;->STOPPED:Landroidx/test/runner/lifecycle/Stage;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Landroidx/test/core/app/InstrumentationActivityInvoker;->checkActivityStageIsIn(Landroid/app/Activity;[Landroidx/test/runner/lifecycle/Stage;)V

    .line 553
    invoke-direct {p0}, Landroidx/test/core/app/InstrumentationActivityInvoker;->startEmptyActivitySync()V

    .line 554
    return-void
.end method
