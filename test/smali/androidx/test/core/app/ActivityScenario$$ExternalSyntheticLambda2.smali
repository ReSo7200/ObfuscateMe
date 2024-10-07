.class public final synthetic Landroidx/test/core/app/ActivityScenario$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/test/core/app/ActivityScenario;

.field public final synthetic f$1:Landroidx/test/core/app/ActivityScenario$ActivityAction;


# direct methods
.method public synthetic constructor <init>(Landroidx/test/core/app/ActivityScenario;Landroidx/test/core/app/ActivityScenario$ActivityAction;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/test/core/app/ActivityScenario$$ExternalSyntheticLambda2;->f$0:Landroidx/test/core/app/ActivityScenario;

    iput-object p2, p0, Landroidx/test/core/app/ActivityScenario$$ExternalSyntheticLambda2;->f$1:Landroidx/test/core/app/ActivityScenario$ActivityAction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario$$ExternalSyntheticLambda2;->f$0:Landroidx/test/core/app/ActivityScenario;

    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario$$ExternalSyntheticLambda2;->f$1:Landroidx/test/core/app/ActivityScenario$ActivityAction;

    invoke-virtual {v0, v1}, Landroidx/test/core/app/ActivityScenario;->lambda$onActivity$2$androidx-test-core-app-ActivityScenario(Landroidx/test/core/app/ActivityScenario$ActivityAction;)V

    return-void
.end method
