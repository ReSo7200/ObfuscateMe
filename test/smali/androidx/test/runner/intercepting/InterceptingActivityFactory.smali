.class public interface abstract Landroidx/test/runner/intercepting/InterceptingActivityFactory;
.super Ljava/lang/Object;
.source "InterceptingActivityFactory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract create(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
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
.end method

.method public abstract shouldIntercept(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Z
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
.end method
