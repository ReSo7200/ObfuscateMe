.class public final synthetic Landroidx/test/ext/junit/rules/ActivityScenarioRule$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Class;

    invoke-static {v0}, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->lambda$new$0(Ljava/lang/Class;)Landroidx/test/core/app/ActivityScenario;

    move-result-object v0

    return-object v0
.end method
