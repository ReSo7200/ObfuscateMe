.class Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;
.super Ljava/lang/Object;
.source "ActivityLifecycleMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityStatus"
.end annotation


# instance fields
.field private final activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private lifecycleStage:Landroidx/test/runner/lifecycle/Stage;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroidx/test/runner/lifecycle/Stage;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "stage"    # Landroidx/test/runner/lifecycle/Stage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "stage"
        }
    .end annotation

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->activityRef:Ljava/lang/ref/WeakReference;

    .line 200
    invoke-static {p2}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/runner/lifecycle/Stage;

    iput-object v0, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->lifecycleStage:Landroidx/test/runner/lifecycle/Stage;

    .line 201
    return-void
.end method

.method static synthetic access$000(Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;

    .line 194
    iget-object v0, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->activityRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;)Landroidx/test/runner/lifecycle/Stage;
    .locals 1
    .param p0, "x0"    # Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;

    .line 194
    iget-object v0, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->lifecycleStage:Landroidx/test/runner/lifecycle/Stage;

    return-object v0
.end method

.method static synthetic access$102(Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;Landroidx/test/runner/lifecycle/Stage;)Landroidx/test/runner/lifecycle/Stage;
    .locals 0
    .param p0, "x0"    # Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;
    .param p1, "x1"    # Landroidx/test/runner/lifecycle/Stage;

    .line 194
    iput-object p1, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->lifecycleStage:Landroidx/test/runner/lifecycle/Stage;

    return-object p1
.end method
