.class public final synthetic Landroidx/test/ext/junit/rules/ActivityScenarioRule$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule$$ExternalSyntheticLambda3;->f$0:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule$$ExternalSyntheticLambda3;->f$0:Landroid/content/Intent;

    invoke-static {v0}, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->lambda$new$2(Landroid/content/Intent;)Landroidx/test/core/app/ActivityScenario;

    move-result-object v0

    return-object v0
.end method
