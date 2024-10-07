.class public Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;
.super Ljava/lang/Object;
.source "MonitoringInstrumentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/runner/MonitoringInstrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActivityFinisher"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/runner/MonitoringInstrumentation;


# direct methods
.method public constructor <init>(Landroidx/test/runner/MonitoringInstrumentation;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/test/runner/MonitoringInstrumentation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 922
    iput-object p1, p0, Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;->this$0:Landroidx/test/runner/MonitoringInstrumentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 925
    const-string v0, "MonitoringInstr"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 927
    .local v1, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    sget-object v2, Landroidx/test/runner/lifecycle/Stage;->CREATED:Landroidx/test/runner/lifecycle/Stage;

    sget-object v3, Landroidx/test/runner/lifecycle/Stage;->STOPPED:Landroidx/test/runner/lifecycle/Stage;

    invoke-static {v2, v3}, Ljava/util/EnumSet;->range(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/test/runner/lifecycle/Stage;

    .line 928
    .local v3, "s":Landroidx/test/runner/lifecycle/Stage;
    iget-object v4, p0, Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;->this$0:Landroidx/test/runner/MonitoringInstrumentation;

    invoke-static {v4}, Landroidx/test/runner/MonitoringInstrumentation;->access$400(Landroidx/test/runner/MonitoringInstrumentation;)Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->getActivitiesInStage(Landroidx/test/runner/lifecycle/Stage;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 929
    .end local v3    # "s":Landroidx/test/runner/lifecycle/Stage;
    goto :goto_0

    .line 931
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    .line 932
    .local v3, "activity":Landroid/app/Activity;
    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 934
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finishing activity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    goto :goto_2

    .line 936
    :catch_0
    move-exception v4

    .line 937
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string v5, "Failed to finish activity."

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 940
    .end local v3    # "activity":Landroid/app/Activity;
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_2
    goto :goto_1

    .line 941
    :cond_2
    return-void
.end method
