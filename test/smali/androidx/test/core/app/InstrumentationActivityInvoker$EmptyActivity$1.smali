.class Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "InstrumentationActivityInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyActivity;


# direct methods
.method constructor <init>(Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyActivity;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 311
    iput-object p1, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyActivity$1;->this$0:Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyActivity$1;->this$0:Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyActivity;

    invoke-virtual {v0}, Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyActivity;->finish()V

    .line 315
    return-void
.end method
