.class public final synthetic Landroidx/test/core/app/InstrumentationActivityInvoker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/util/Set;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$$ExternalSyntheticLambda0;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$$ExternalSyntheticLambda0;->f$1:Ljava/util/Set;

    invoke-static {v0, v1}, Landroidx/test/core/app/InstrumentationActivityInvoker;->lambda$checkActivityStageIsIn$0(Landroid/app/Activity;Ljava/util/Set;)V

    return-void
.end method
