.class public final Landroidx/test/internal/runner/intercepting/DefaultInterceptingActivityFactory;
.super Ljava/lang/Object;
.source "DefaultInterceptingActivityFactory.java"

# interfaces
.implements Landroidx/test/runner/intercepting/InterceptingActivityFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "classLoader",
            "className",
            "intent"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public shouldIntercept(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "classLoader",
            "className",
            "intent"
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return v0
.end method
