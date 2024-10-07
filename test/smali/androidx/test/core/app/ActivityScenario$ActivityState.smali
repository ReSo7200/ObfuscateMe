.class Landroidx/test/core/app/ActivityScenario$ActivityState;
.super Ljava/lang/Object;
.source "ActivityScenario.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/core/app/ActivityScenario;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Landroid/app/Activity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final activity:Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field final stage:Landroidx/test/runner/lifecycle/Stage;

.field final state:Landroidx/lifecycle/Lifecycle$State;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$State;Landroidx/test/runner/lifecycle/Stage;)V
    .locals 0
    .param p2, "state"    # Landroidx/lifecycle/Lifecycle$State;
    .param p3, "stage"    # Landroidx/test/runner/lifecycle/Stage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "state",
            "stage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Landroidx/lifecycle/Lifecycle$State;",
            "Landroidx/test/runner/lifecycle/Stage;",
            ")V"
        }
    .end annotation

    .line 614
    .local p0, "this":Landroidx/test/core/app/ActivityScenario$ActivityState;, "Landroidx/test/core/app/ActivityScenario$ActivityState<TA;>;"
    .local p1, "activity":Landroid/app/Activity;, "TA;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    iput-object p1, p0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    .line 616
    iput-object p2, p0, Landroidx/test/core/app/ActivityScenario$ActivityState;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 617
    iput-object p3, p0, Landroidx/test/core/app/ActivityScenario$ActivityState;->stage:Landroidx/test/runner/lifecycle/Stage;

    .line 618
    return-void
.end method
