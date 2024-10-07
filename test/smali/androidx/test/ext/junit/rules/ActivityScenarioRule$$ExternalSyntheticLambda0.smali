.class public final synthetic Landroidx/test/ext/junit/rules/ActivityScenarioRule$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Class;

    iput-object p2, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Class;

    iget-object v1, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    invoke-static {v0, v1}, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->lambda$new$1(Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/test/core/app/ActivityScenario;

    move-result-object v0

    return-object v0
.end method
