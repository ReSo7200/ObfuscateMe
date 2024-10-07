.class public final Landroidx/test/core/app/ActivityScenario;
.super Ljava/lang/Object;
.source "ActivityScenario.java"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/core/app/ActivityScenario$ActivityAction;,
        Landroidx/test/core/app/ActivityScenario$ActivityState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Landroid/app/Activity;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/AutoCloseable;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field private static final STEADY_STATES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/test/runner/lifecycle/Stage;",
            "Landroidx/lifecycle/Lifecycle$State;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT_MILLISECONDS:J = 0xafc8L


# instance fields
.field private final activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

.field private final activityLifecycleObserver:Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

.field private final controlledLooper:Landroidx/test/internal/platform/os/ControlledLooper;

.field private currentActivity:Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final startActivityIntent:Landroid/content/Intent;

.field private final stateChangedCondition:Ljava/util/concurrent/locks/Condition;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 119
    const-class v0, Landroidx/test/core/app/ActivityScenario;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/test/core/app/ActivityScenario;->TAG:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroidx/test/runner/lifecycle/Stage;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroidx/test/core/app/ActivityScenario;->STEADY_STATES:Ljava/util/Map;

    .line 134
    sget-object v0, Landroidx/test/core/app/ActivityScenario;->STEADY_STATES:Ljava/util/Map;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->RESUMED:Landroidx/test/runner/lifecycle/Stage;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Landroidx/test/core/app/ActivityScenario;->STEADY_STATES:Ljava/util/Map;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->PAUSED:Landroidx/test/runner/lifecycle/Stage;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Landroidx/test/core/app/ActivityScenario;->STEADY_STATES:Ljava/util/Map;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->STOPPED:Landroidx/test/runner/lifecycle/Stage;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Landroidx/test/core/app/ActivityScenario;->STEADY_STATES:Ljava/util/Map;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->DESTROYED:Landroidx/test/runner/lifecycle/Stage;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;)V
    .locals 2
    .param p1, "startActivityIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startActivityIntent"
        }
    .end annotation

    .line 174
    .local p0, "this":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 144
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->stateChangedCondition:Ljava/util/concurrent/locks/Condition;

    .line 150
    const-class v0, Landroidx/test/internal/platform/app/ActivityInvoker;

    new-instance v1, Landroidx/test/core/app/ActivityScenario$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroidx/test/core/app/ActivityScenario$$ExternalSyntheticLambda0;-><init>()V

    .line 151
    invoke-static {v0, v1}, Landroidx/test/internal/platform/ServiceLoaderWrapper;->loadSingleService(Ljava/lang/Class;Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/internal/platform/app/ActivityInvoker;

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    .line 154
    const-class v0, Landroidx/test/internal/platform/os/ControlledLooper;

    new-instance v1, Landroidx/test/core/app/ActivityScenario$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroidx/test/core/app/ActivityScenario$$ExternalSyntheticLambda1;-><init>()V

    .line 155
    invoke-static {v0, v1}, Landroidx/test/internal/platform/ServiceLoaderWrapper;->loadSingleService(Ljava/lang/Class;Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/internal/platform/os/ControlledLooper;

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->controlledLooper:Landroidx/test/internal/platform/os/ControlledLooper;

    .line 162
    sget-object v0, Landroidx/test/runner/lifecycle/Stage;->PRE_ON_CREATE:Landroidx/test/runner/lifecycle/Stage;

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    .line 471
    new-instance v0, Landroidx/test/core/app/ActivityScenario$1;

    invoke-direct {v0, p0}, Landroidx/test/core/app/ActivityScenario$1;-><init>(Landroidx/test/core/app/ActivityScenario;)V

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->activityLifecycleObserver:Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

    .line 175
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->startActivityIntent:Landroid/content/Intent;

    .line 176
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TA;>;)V"
        }
    .end annotation

    .line 179
    .local p0, "this":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    .local p1, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 144
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->stateChangedCondition:Ljava/util/concurrent/locks/Condition;

    .line 150
    const-class v0, Landroidx/test/internal/platform/app/ActivityInvoker;

    new-instance v1, Landroidx/test/core/app/ActivityScenario$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroidx/test/core/app/ActivityScenario$$ExternalSyntheticLambda0;-><init>()V

    .line 151
    invoke-static {v0, v1}, Landroidx/test/internal/platform/ServiceLoaderWrapper;->loadSingleService(Ljava/lang/Class;Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/internal/platform/app/ActivityInvoker;

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    .line 154
    const-class v0, Landroidx/test/internal/platform/os/ControlledLooper;

    new-instance v1, Landroidx/test/core/app/ActivityScenario$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroidx/test/core/app/ActivityScenario$$ExternalSyntheticLambda1;-><init>()V

    .line 155
    invoke-static {v0, v1}, Landroidx/test/internal/platform/ServiceLoaderWrapper;->loadSingleService(Ljava/lang/Class;Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/internal/platform/os/ControlledLooper;

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->controlledLooper:Landroidx/test/internal/platform/os/ControlledLooper;

    .line 162
    sget-object v0, Landroidx/test/runner/lifecycle/Stage;->PRE_ON_CREATE:Landroidx/test/runner/lifecycle/Stage;

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    .line 471
    new-instance v0, Landroidx/test/core/app/ActivityScenario$1;

    invoke-direct {v0, p0}, Landroidx/test/core/app/ActivityScenario$1;-><init>(Landroidx/test/core/app/ActivityScenario;)V

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->activityLifecycleObserver:Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

    .line 180
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    .line 181
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-interface {v0, v1}, Landroidx/test/internal/platform/app/ActivityInvoker;->getIntentForActivity(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->startActivityIntent:Landroid/content/Intent;

    .line 182
    return-void
.end method

.method static synthetic access$000(Landroidx/test/core/app/ActivityScenario;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Landroidx/test/core/app/ActivityScenario;

    .line 118
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->startActivityIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Intent;Landroid/app/Activity;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;
    .param p1, "x1"    # Landroid/app/Activity;

    .line 118
    invoke-static {p0, p1}, Landroidx/test/core/app/ActivityScenario;->activityMatchesIntent(Landroid/content/Intent;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 118
    sget-object v0, Landroidx/test/core/app/ActivityScenario;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/test/core/app/ActivityScenario;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Landroidx/test/core/app/ActivityScenario;

    .line 118
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/test/core/app/ActivityScenario;)Landroidx/test/runner/lifecycle/Stage;
    .locals 1
    .param p0, "x0"    # Landroidx/test/core/app/ActivityScenario;

    .line 118
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    return-object v0
.end method

.method static synthetic access$402(Landroidx/test/core/app/ActivityScenario;Landroidx/test/runner/lifecycle/Stage;)Landroidx/test/runner/lifecycle/Stage;
    .locals 0
    .param p0, "x0"    # Landroidx/test/core/app/ActivityScenario;
    .param p1, "x1"    # Landroidx/test/runner/lifecycle/Stage;

    .line 118
    iput-object p1, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    return-object p1
.end method

.method static synthetic access$500(Landroidx/test/core/app/ActivityScenario;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Landroidx/test/core/app/ActivityScenario;

    .line 118
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$502(Landroidx/test/core/app/ActivityScenario;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .param p0, "x0"    # Landroidx/test/core/app/ActivityScenario;
    .param p1, "x1"    # Landroid/app/Activity;

    .line 118
    iput-object p1, p0, Landroidx/test/core/app/ActivityScenario;->currentActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$600(Landroidx/test/core/app/ActivityScenario;)Ljava/util/concurrent/locks/Condition;
    .locals 1
    .param p0, "x0"    # Landroidx/test/core/app/ActivityScenario;

    .line 118
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->stateChangedCondition:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method private static activityMatchesIntent(Landroid/content/Intent;Landroid/app/Activity;)Z
    .locals 6
    .param p0, "startActivityIntent"    # Landroid/content/Intent;
    .param p1, "launchedActivity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startActivityIntent",
            "launchedActivity"
        }
    .end annotation

    .line 552
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 553
    .local v0, "activityIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/test/core/app/ActivityScenario;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 554
    return v2

    .line 556
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/test/core/app/ActivityScenario;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 557
    return v2

    .line 559
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/test/core/app/ActivityScenario;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 560
    return v2

    .line 562
    :cond_2
    nop

    .line 563
    invoke-static {p0}, Landroidx/test/core/app/ActivityScenario;->hasPackageEquivalentComponent(Landroid/content/Intent;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 564
    invoke-static {v0}, Landroidx/test/core/app/ActivityScenario;->hasPackageEquivalentComponent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v2

    .line 565
    .local v1, "isActivityInSamePackage":Z
    :goto_0
    if-nez v1, :cond_4

    .line 566
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/test/core/app/ActivityScenario;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 567
    return v2

    .line 569
    :cond_4
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 570
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/test/core/app/ActivityScenario;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 571
    return v2

    .line 574
    :cond_5
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/test/core/app/ActivityScenario;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 575
    return v2

    .line 577
    :cond_6
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_7

    .line 578
    invoke-virtual {p0}, Landroid/content/Intent;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Intent;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/test/core/app/ActivityScenario;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 579
    return v2

    .line 583
    :cond_7
    return v3
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 602
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private getCurrentActivityState()Landroidx/test/core/app/ActivityScenario$ActivityState;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/core/app/ActivityScenario$ActivityState<",
            "TA;>;"
        }
    .end annotation

    .line 622
    .local p0, "this":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 623
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 625
    :try_start_0
    new-instance v0, Landroidx/test/core/app/ActivityScenario$ActivityState;

    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->currentActivity:Landroid/app/Activity;

    sget-object v2, Landroidx/test/core/app/ActivityScenario;->STEADY_STATES:Ljava/util/Map;

    iget-object v3, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    .line 626
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/Lifecycle$State;

    iget-object v3, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    invoke-direct {v0, v1, v2, v3}, Landroidx/test/core/app/ActivityScenario$ActivityState;-><init>(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$State;Landroidx/test/runner/lifecycle/Stage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 625
    return-object v0

    .line 628
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 629
    throw v0
.end method

.method private static hasPackageEquivalentComponent(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 592
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 593
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 596
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    .line 597
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 596
    :goto_0
    return v2
.end method

.method static synthetic lambda$new$0()Landroidx/test/internal/platform/app/ActivityInvoker;
    .locals 1

    .line 152
    new-instance v0, Landroidx/test/core/app/InstrumentationActivityInvoker;

    invoke-direct {v0}, Landroidx/test/core/app/InstrumentationActivityInvoker;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$new$1()Landroidx/test/internal/platform/os/ControlledLooper;
    .locals 1

    .line 156
    sget-object v0, Landroidx/test/internal/platform/os/ControlledLooper;->NO_OP_CONTROLLED_LOOPER:Landroidx/test/internal/platform/os/ControlledLooper;

    return-object v0
.end method

.method public static launch(Landroid/content/Intent;)Landroidx/test/core/app/ActivityScenario;
    .locals 3
    .param p0, "startActivityIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startActivityIntent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Landroid/content/Intent;",
            ")",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 236
    new-instance v0, Landroidx/test/core/app/ActivityScenario;

    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroidx/test/core/app/ActivityScenario;-><init>(Landroid/content/Intent;)V

    .line 237
    .local v0, "scenario":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/core/app/ActivityScenario;->launchInternal(Landroid/os/Bundle;Z)V

    .line 238
    return-object v0
.end method

.method public static launch(Landroid/content/Intent;Landroid/os/Bundle;)Landroidx/test/core/app/ActivityScenario;
    .locals 2
    .param p0, "startActivityIntent"    # Landroid/content/Intent;
    .param p1, "activityOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startActivityIntent",
            "activityOptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Landroid/content/Intent;",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 251
    new-instance v0, Landroidx/test/core/app/ActivityScenario;

    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroidx/test/core/app/ActivityScenario;-><init>(Landroid/content/Intent;)V

    .line 252
    .local v0, "scenario":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/test/core/app/ActivityScenario;->launchInternal(Landroid/os/Bundle;Z)V

    .line 253
    return-object v0
.end method

.method public static launch(Ljava/lang/Class;)Landroidx/test/core/app/ActivityScenario;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 202
    .local p0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    new-instance v0, Landroidx/test/core/app/ActivityScenario;

    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-direct {v0, v1}, Landroidx/test/core/app/ActivityScenario;-><init>(Ljava/lang/Class;)V

    .line 203
    .local v0, "scenario":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/core/app/ActivityScenario;->launchInternal(Landroid/os/Bundle;Z)V

    .line 204
    return-object v0
.end method

.method public static launch(Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/test/core/app/ActivityScenario;
    .locals 2
    .param p1, "activityOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activityClass",
            "activityOptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 215
    .local p0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    new-instance v0, Landroidx/test/core/app/ActivityScenario;

    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-direct {v0, v1}, Landroidx/test/core/app/ActivityScenario;-><init>(Ljava/lang/Class;)V

    .line 216
    .local v0, "scenario":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/test/core/app/ActivityScenario;->launchInternal(Landroid/os/Bundle;Z)V

    .line 217
    return-object v0
.end method

.method public static launchActivityForResult(Landroid/content/Intent;)Landroidx/test/core/app/ActivityScenario;
    .locals 3
    .param p0, "startActivityIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startActivityIntent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Landroid/content/Intent;",
            ")",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 315
    new-instance v0, Landroidx/test/core/app/ActivityScenario;

    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroidx/test/core/app/ActivityScenario;-><init>(Landroid/content/Intent;)V

    .line 316
    .local v0, "scenario":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/test/core/app/ActivityScenario;->launchInternal(Landroid/os/Bundle;Z)V

    .line 317
    return-object v0
.end method

.method public static launchActivityForResult(Landroid/content/Intent;Landroid/os/Bundle;)Landroidx/test/core/app/ActivityScenario;
    .locals 2
    .param p0, "startActivityIntent"    # Landroid/content/Intent;
    .param p1, "activityOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startActivityIntent",
            "activityOptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Landroid/content/Intent;",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 331
    new-instance v0, Landroidx/test/core/app/ActivityScenario;

    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroidx/test/core/app/ActivityScenario;-><init>(Landroid/content/Intent;)V

    .line 332
    .local v0, "scenario":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroidx/test/core/app/ActivityScenario;->launchInternal(Landroid/os/Bundle;Z)V

    .line 333
    return-object v0
.end method

.method public static launchActivityForResult(Ljava/lang/Class;)Landroidx/test/core/app/ActivityScenario;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 275
    .local p0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    new-instance v0, Landroidx/test/core/app/ActivityScenario;

    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-direct {v0, v1}, Landroidx/test/core/app/ActivityScenario;-><init>(Ljava/lang/Class;)V

    .line 276
    .local v0, "scenario":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/test/core/app/ActivityScenario;->launchInternal(Landroid/os/Bundle;Z)V

    .line 277
    return-object v0
.end method

.method public static launchActivityForResult(Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/test/core/app/ActivityScenario;
    .locals 2
    .param p1, "activityOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activityClass",
            "activityOptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 291
    .local p0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    new-instance v0, Landroidx/test/core/app/ActivityScenario;

    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-direct {v0, v1}, Landroidx/test/core/app/ActivityScenario;-><init>(Ljava/lang/Class;)V

    .line 292
    .local v0, "scenario":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroidx/test/core/app/ActivityScenario;->launchInternal(Landroid/os/Bundle;Z)V

    .line 293
    return-object v0
.end method

.method private launchInternal(Landroid/os/Bundle;Z)V
    .locals 3
    .param p1, "activityOptions"    # Landroid/os/Bundle;
    .param p2, "launchActivityForResult"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activityOptions",
            "launchActivityForResult"
        }
    .end annotation

    .line 346
    .local p0, "this":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 345
    const-string v1, "always_finish_activities"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 344
    :goto_0
    const-string v1, "\"Don\'t keep activities\" developer options must be disabled for ActivityScenario"

    invoke-static {v0, v1}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 352
    invoke-static {}, Landroidx/test/internal/util/Checks;->checkNotMainThread()V

    .line 354
    const-string v0, "ActivityScenario launch"

    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 356
    :try_start_0
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 358
    invoke-static {}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitorRegistry;->getInstance()Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->activityLifecycleObserver:Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

    .line 359
    invoke-interface {v0, v1}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;->addLifecycleCallback(Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;)V

    .line 363
    if-nez p1, :cond_2

    .line 364
    if-eqz p2, :cond_1

    .line 365
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->startActivityIntent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroidx/test/internal/platform/app/ActivityInvoker;->startActivityForResult(Landroid/content/Intent;)V

    goto :goto_1

    .line 367
    :cond_1
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->startActivityIntent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroidx/test/internal/platform/app/ActivityInvoker;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 370
    :cond_2
    if-eqz p2, :cond_3

    .line 371
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->startActivityIntent:Landroid/content/Intent;

    invoke-interface {v0, v1, p1}, Landroidx/test/internal/platform/app/ActivityInvoker;->startActivityForResult(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_1

    .line 373
    :cond_3
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->startActivityIntent:Landroid/content/Intent;

    invoke-interface {v0, v1, p1}, Landroidx/test/internal/platform/app/ActivityInvoker;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 380
    :goto_1
    sget-object v0, Landroidx/test/core/app/ActivityScenario;->STEADY_STATES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v1, v2, [Landroidx/lifecycle/Lifecycle$State;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/lifecycle/Lifecycle$State;

    invoke-direct {p0, v0}, Landroidx/test/core/app/ActivityScenario;->waitForActivityToBecomeAnyOf([Landroidx/lifecycle/Lifecycle$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 383
    nop

    .line 384
    return-void

    .line 382
    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 383
    throw v0
.end method

.method private varargs waitForActivityToBecomeAnyOf([Landroidx/lifecycle/Lifecycle$State;)V
    .locals 10
    .param p1, "expectedStates"    # [Landroidx/lifecycle/Lifecycle$State;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expectedStates"
        }
    .end annotation

    .line 435
    .local p0, "this":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    const-string v0, "Activity never becomes requested state \"%s\" (last lifecycle transition = \"%s\")"

    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 437
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 438
    .local v1, "expectedStateSet":Ljava/util/Set;, "Ljava/util/Set<Landroidx/lifecycle/Lifecycle$State;>;"
    iget-object v2, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 440
    :try_start_0
    sget-object v2, Landroidx/test/core/app/ActivityScenario;->STEADY_STATES:Ljava/util/Map;

    iget-object v3, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 466
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 441
    return-void

    .line 444
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 445
    .local v2, "now":J
    const-wide/32 v4, 0xafc8

    add-long/2addr v4, v2

    .line 446
    .local v4, "deadline":J
    :goto_0
    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    sget-object v6, Landroidx/test/core/app/ActivityScenario;->STEADY_STATES:Ljava/util/Map;

    iget-object v7, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    .line 447
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 448
    iget-object v6, p0, Landroidx/test/core/app/ActivityScenario;->stateChangedCondition:Ljava/util/concurrent/locks/Condition;

    sub-long v7, v4, v2

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v7, v8, v9}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 449
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-wide v2, v6

    goto :goto_0

    .line 452
    :cond_1
    sget-object v6, Landroidx/test/core/app/ActivityScenario;->STEADY_STATES:Ljava/util/Map;

    iget-object v7, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    .line 466
    .end local v2    # "now":J
    .end local v4    # "deadline":J
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 467
    nop

    .line 468
    return-void

    .line 453
    .restart local v2    # "now":J
    .restart local v4    # "deadline":J
    :cond_2
    :try_start_2
    new-instance v6, Ljava/lang/AssertionError;

    iget-object v7, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    filled-new-array {v1, v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 454
    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v1    # "expectedStateSet":Ljava/util/Set;, "Ljava/util/Set<Landroidx/lifecycle/Lifecycle$State;>;"
    .end local p1    # "expectedStates":[Landroidx/lifecycle/Lifecycle$State;
    throw v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 466
    .end local v2    # "now":J
    .end local v4    # "deadline":J
    .restart local v1    # "expectedStateSet":Ljava/util/Set;, "Ljava/util/Set<Landroidx/lifecycle/Lifecycle$State;>;"
    .restart local p1    # "expectedStates":[Landroidx/lifecycle/Lifecycle$State;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 459
    :catch_0
    move-exception v2

    .line 460
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v3, Ljava/lang/AssertionError;

    iget-object v4, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 461
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "expectedStateSet":Ljava/util/Set;, "Ljava/util/Set<Landroidx/lifecycle/Lifecycle$State;>;"
    .end local p1    # "expectedStates":[Landroidx/lifecycle/Lifecycle$State;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 466
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "expectedStateSet":Ljava/util/Set;, "Ljava/util/Set<Landroidx/lifecycle/Lifecycle$State;>;"
    .restart local p1    # "expectedStates":[Landroidx/lifecycle/Lifecycle$State;
    :goto_1
    iget-object v2, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 467
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 419
    .local p0, "this":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    const-string v0, "ActivityScenario close"

    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 421
    :try_start_0
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Landroidx/test/core/app/ActivityScenario;->moveToState(Landroidx/lifecycle/Lifecycle$State;)Landroidx/test/core/app/ActivityScenario;

    .line 422
    invoke-static {}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitorRegistry;->getInstance()Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->activityLifecycleObserver:Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

    .line 423
    invoke-interface {v0, v1}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;->removeLifecycleCallback(Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 426
    nop

    .line 427
    return-void

    .line 425
    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 426
    throw v0
.end method

.method public getResult()Landroid/app/Instrumentation$ActivityResult;
    .locals 1

    .line 836
    .local p0, "this":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    invoke-interface {v0}, Landroidx/test/internal/platform/app/ActivityInvoker;->getActivityResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public getState()Landroidx/lifecycle/Lifecycle$State;
    .locals 4

    .line 846
    .local p0, "this":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    invoke-direct {p0}, Landroidx/test/core/app/ActivityScenario;->getCurrentActivityState()Landroidx/test/core/app/ActivityScenario$ActivityState;

    move-result-object v0

    .line 847
    .local v0, "currentActivityState":Landroidx/test/core/app/ActivityScenario$ActivityState;, "Landroidx/test/core/app/ActivityScenario$ActivityState<TA;>;"
    iget-object v1, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->state:Landroidx/lifecycle/Lifecycle$State;

    iget-object v2, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    iget-object v3, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->stage:Landroidx/test/runner/lifecycle/Stage;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Could not get current state of activity %s due to the transition is incomplete. Current stage = %s"

    invoke-static {v1, v3, v2}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/Lifecycle$State;

    return-object v1
.end method

.method synthetic lambda$onActivity$2$androidx-test-core-app-ActivityScenario(Landroidx/test/core/app/ActivityScenario$ActivityAction;)V
    .locals 2
    .param p1, "action"    # Landroidx/test/core/app/ActivityScenario$ActivityAction;

    .line 788
    .local p0, "this":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    invoke-static {}, Landroidx/test/internal/util/Checks;->checkMainThread()V

    .line 790
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 792
    :try_start_0
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->currentActivity:Landroid/app/Activity;

    const-string v1, "Cannot run onActivity since Activity has been destroyed already"

    invoke-static {v0, v1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->currentActivity:Landroid/app/Activity;

    invoke-interface {p1, v0}, Landroidx/test/core/app/ActivityScenario$ActivityAction;->perform(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 797
    nop

    .line 798
    return-void

    .line 796
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 797
    throw v0
.end method

.method public moveToState(Landroidx/lifecycle/Lifecycle$State;)Landroidx/test/core/app/ActivityScenario;
    .locals 6
    .param p1, "newState"    # Landroidx/lifecycle/Lifecycle$State;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newState"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle$State;",
            ")",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 653
    .local p0, "this":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    invoke-static {}, Landroidx/test/internal/util/Checks;->checkNotMainThread()V

    .line 654
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 656
    invoke-direct {p0}, Landroidx/test/core/app/ActivityScenario;->getCurrentActivityState()Landroidx/test/core/app/ActivityScenario$ActivityState;

    move-result-object v0

    .line 657
    .local v0, "currentState":Landroidx/test/core/app/ActivityScenario$ActivityState;, "Landroidx/test/core/app/ActivityScenario$ActivityState<TA;>;"
    iget-object v1, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->state:Landroidx/lifecycle/Lifecycle$State;

    iget-object v2, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->stage:Landroidx/test/runner/lifecycle/Stage;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 659
    const-string v3, "Current state was null unexpectedly. Last stage = %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 657
    invoke-static {v1, v2}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    iget-object v1, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->state:Landroidx/lifecycle/Lifecycle$State;

    if-ne v1, p1, :cond_0

    .line 661
    return-object p0

    .line 663
    :cond_0
    iget-object v1, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->state:Landroidx/lifecycle/Lifecycle$State;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 665
    const-string v5, "Cannot move to state \"%s\" since the Activity has been destroyed already"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 663
    invoke-static {v1, v2}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 668
    sget-object v1, Landroidx/test/core/app/ActivityScenario$2;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 685
    new-instance v1, Ljava/lang/IllegalArgumentException;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 686
    const-string v3, "A requested state \"%s\" is not supported"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 682
    :pswitch_0
    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    iget-object v2, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Landroidx/test/internal/platform/app/ActivityInvoker;->finishActivity(Landroid/app/Activity;)V

    .line 683
    goto :goto_1

    .line 679
    :pswitch_1
    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    iget-object v2, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Landroidx/test/internal/platform/app/ActivityInvoker;->resumeActivity(Landroid/app/Activity;)V

    .line 680
    goto :goto_1

    .line 675
    :pswitch_2
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v1}, Landroidx/test/core/app/ActivityScenario;->moveToState(Landroidx/lifecycle/Lifecycle$State;)Landroidx/test/core/app/ActivityScenario;

    .line 676
    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    iget-object v2, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Landroidx/test/internal/platform/app/ActivityInvoker;->pauseActivity(Landroid/app/Activity;)V

    .line 677
    goto :goto_1

    .line 670
    :pswitch_3
    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    iget-object v2, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Landroidx/test/internal/platform/app/ActivityInvoker;->stopActivity(Landroid/app/Activity;)V

    .line 671
    nop

    .line 689
    :goto_1
    new-array v1, v3, [Landroidx/lifecycle/Lifecycle$State;

    aput-object p1, v1, v4

    invoke-direct {p0, v1}, Landroidx/test/core/app/ActivityScenario;->waitForActivityToBecomeAnyOf([Landroidx/lifecycle/Lifecycle$State;)V

    .line 690
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivity(Landroidx/test/core/app/ActivityScenario$ActivityAction;)Landroidx/test/core/app/ActivityScenario;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/core/app/ActivityScenario$ActivityAction<",
            "TA;>;)",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 786
    .local p0, "this":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    .local p1, "action":Landroidx/test/core/app/ActivityScenario$ActivityAction;, "Landroidx/test/core/app/ActivityScenario$ActivityAction<TA;>;"
    new-instance v0, Landroidx/test/core/app/ActivityScenario$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroidx/test/core/app/ActivityScenario$$ExternalSyntheticLambda2;-><init>(Landroidx/test/core/app/ActivityScenario;Landroidx/test/core/app/ActivityScenario$ActivityAction;)V

    .line 800
    .local v0, "runnableAction":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 803
    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->controlledLooper:Landroidx/test/internal/platform/os/ControlledLooper;

    invoke-interface {v1}, Landroidx/test/internal/platform/os/ControlledLooper;->drainMainThreadUntilIdle()V

    .line 804
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 806
    :cond_0
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 807
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 810
    :goto_0
    return-object p0
.end method

.method public recreate()Landroidx/test/core/app/ActivityScenario;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 707
    .local p0, "this":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    invoke-static {}, Landroidx/test/internal/util/Checks;->checkNotMainThread()V

    .line 708
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 710
    invoke-direct {p0}, Landroidx/test/core/app/ActivityScenario;->getCurrentActivityState()Landroidx/test/core/app/ActivityScenario$ActivityState;

    move-result-object v0

    .line 711
    .local v0, "prevActivityState":Landroidx/test/core/app/ActivityScenario$ActivityState;, "Landroidx/test/core/app/ActivityScenario$ActivityState<TA;>;"
    iget-object v1, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    invoke-static {v1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    iget-object v1, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->state:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v1}, Landroidx/test/core/app/ActivityScenario;->moveToState(Landroidx/lifecycle/Lifecycle$State;)Landroidx/test/core/app/ActivityScenario;

    .line 719
    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    iget-object v2, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Landroidx/test/internal/platform/app/ActivityInvoker;->recreateActivity(Landroid/app/Activity;)V

    .line 722
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 723
    .local v1, "now":J
    const-wide/32 v3, 0xafc8

    add-long/2addr v3, v1

    .line 725
    .local v3, "deadline":J
    :cond_0
    const/4 v5, 0x1

    new-array v5, v5, [Landroidx/lifecycle/Lifecycle$State;

    const/4 v6, 0x0

    sget-object v7, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    aput-object v7, v5, v6

    invoke-direct {p0, v5}, Landroidx/test/core/app/ActivityScenario;->waitForActivityToBecomeAnyOf([Landroidx/lifecycle/Lifecycle$State;)V

    .line 726
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 727
    invoke-direct {p0}, Landroidx/test/core/app/ActivityScenario;->getCurrentActivityState()Landroidx/test/core/app/ActivityScenario$ActivityState;

    move-result-object v5

    .line 728
    .local v5, "activityState":Landroidx/test/core/app/ActivityScenario$ActivityState;, "Landroidx/test/core/app/ActivityScenario$ActivityState<TA;>;"
    cmp-long v6, v1, v3

    if-gez v6, :cond_1

    iget-object v6, v5, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    iget-object v7, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    if-eq v6, v7, :cond_0

    .line 729
    :cond_1
    iget-object v6, v5, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    iget-object v7, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    if-eq v6, v7, :cond_2

    .line 733
    iget-object v6, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->state:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v6}, Landroidx/test/core/app/ActivityScenario;->moveToState(Landroidx/lifecycle/Lifecycle$State;)Landroidx/test/core/app/ActivityScenario;

    .line 735
    return-object p0

    .line 730
    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Requested a re-creation of Activity but didn\'t happen"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
