.class public Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;
.super Landroid/app/Activity;
.source "InstrumentationActivityInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/core/app/InstrumentationActivityInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BootstrapActivity"
.end annotation


# static fields
.field private static final IS_TARGET_ACTIVITY_STARTED_KEY:Ljava/lang/String; = "IS_TARGET_ACTIVITY_STARTED_KEY"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isTargetActivityStarted:Z

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    const-class v0, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 132
    new-instance v0, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity$1;

    invoke-direct {v0, p0}, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity$1;-><init>(Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;)V

    iput-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 158
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->overridePendingTransition(II)V

    .line 161
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 222
    if-nez p1, :cond_1

    .line 223
    new-instance v0, Landroid/content/Intent;

    const-string v1, "androidx.test.core.app.InstrumentationActivityInvoker.BOOTSTRAP_ACTIVITY_RESULT_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, "activityResultReceivedActionIntent":Landroid/content/Intent;
    const-string v1, "androidx.test.core.app.InstrumentationActivityInvoker.BOOTSTRAP_ACTIVITY_RESULT_CODE_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    if-eqz p3, :cond_0

    .line 226
    const-string v1, "androidx.test.core.app.InstrumentationActivityInvoker.BOOTSTRAP_ACTIVITY_RESULT_DATA_KEY"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 228
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 229
    invoke-virtual {p0}, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->finish()V

    .line 231
    .end local v0    # "activityResultReceivedActionIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 145
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    iget-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "androidx.test.core.app.InstrumentationActivityInvoker.FINISH_BOOTSTRAP_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Landroidx/test/core/app/InstrumentationActivityInvoker;->access$000(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 148
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 150
    const-string v1, "IS_TARGET_ACTIVITY_STARTED_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->isTargetActivityStarted:Z

    .line 153
    invoke-virtual {p0, v0, v0}, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->overridePendingTransition(II)V

    .line 154
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 217
    iget-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 218
    return-void
.end method

.method protected onResume()V
    .locals 10

    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 167
    iget-boolean v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->isTargetActivityStarted:Z

    if-nez v0, :cond_1

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->isTargetActivityStarted:Z

    .line 169
    nop

    .line 170
    invoke-virtual {p0}, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "androidx.test.core.app.InstrumentationActivityInvoker.START_TARGET_ACTIVITY_INTENT_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 171
    .local v0, "startTargetActivityIntent":Landroid/app/PendingIntent;
    nop

    .line 173
    invoke-virtual {p0}, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "androidx.test.core.app.InstrumentationActivityInvoker.TARGET_ACTIVITY_OPTIONS_BUNDLE_KEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 172
    invoke-static {v1}, Landroidx/test/core/app/InstrumentationActivityInvoker;->access$100(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 175
    .local v1, "options":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 184
    nop

    .line 185
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    .line 184
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_0

    .line 192
    :cond_0
    nop

    .line 193
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    .line 192
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v9, v1

    invoke-virtual/range {v2 .. v9}, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    goto :goto_1

    .line 201
    :catch_0
    move-exception v2

    .line 202
    .local v2, "e":Landroid/content/IntentSender$SendIntentException;
    sget-object v3, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->TAG:Ljava/lang/String;

    const-string v4, "Failed to start target activity."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 206
    .end local v0    # "startTargetActivityIntent":Landroid/app/PendingIntent;
    .end local v1    # "options":Landroid/os/Bundle;
    .end local v2    # "e":Landroid/content/IntentSender$SendIntentException;
    :cond_1
    :goto_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outState"
        }
    .end annotation

    .line 210
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 211
    const-string v0, "IS_TARGET_ACTIVITY_STARTED_KEY"

    iget-boolean v1, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->isTargetActivityStarted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 212
    return-void
.end method
