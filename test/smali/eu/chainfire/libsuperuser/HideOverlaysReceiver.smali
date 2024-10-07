.class public abstract Leu/chainfire/libsuperuser/HideOverlaysReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HideOverlaysReceiver.java"


# static fields
.field public static final ACTION_HIDE_OVERLAYS:Ljava/lang/String; = "eu.chainfire.supersu.action.HIDE_OVERLAYS"

.field public static final CATEGORY_HIDE_OVERLAYS:Ljava/lang/String; = "android.intent.category.INFO"

.field public static final EXTRA_HIDE_OVERLAYS:Ljava/lang/String; = "eu.chainfire.supersu.extra.HIDE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onHideOverlays(Landroid/content/Context;Landroid/content/Intent;Z)V
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 48
    const-string v0, "eu.chainfire.supersu.extra.HIDE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Leu/chainfire/libsuperuser/HideOverlaysReceiver;->onHideOverlays(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 51
    :cond_0
    return-void
.end method
