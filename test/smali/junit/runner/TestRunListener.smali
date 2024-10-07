.class public interface abstract Ljunit/runner/TestRunListener;
.super Ljava/lang/Object;
.source "TestRunListener.java"


# static fields
.field public static final STATUS_ERROR:I = 0x1

.field public static final STATUS_FAILURE:I = 0x2


# virtual methods
.method public abstract testEnded(Ljava/lang/String;)V
.end method

.method public abstract testFailed(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract testRunEnded(J)V
.end method

.method public abstract testRunStarted(Ljava/lang/String;I)V
.end method

.method public abstract testRunStopped(J)V
.end method

.method public abstract testStarted(Ljava/lang/String;)V
.end method
