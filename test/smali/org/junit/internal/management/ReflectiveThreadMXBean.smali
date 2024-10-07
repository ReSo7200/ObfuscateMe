.class final Lorg/junit/internal/management/ReflectiveThreadMXBean;
.super Ljava/lang/Object;
.source "ReflectiveThreadMXBean.java"

# interfaces
.implements Lorg/junit/internal/management/ThreadMXBean;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/internal/management/ReflectiveThreadMXBean$Holder;
    }
.end annotation


# instance fields
.field private final threadMxBean:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "threadMxBean"    # Ljava/lang/Object;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/junit/internal/management/ReflectiveThreadMXBean;->threadMxBean:Ljava/lang/Object;

    .line 43
    return-void
.end method


# virtual methods
.method public getThreadCpuTime(J)J
    .locals 5
    .param p1, "id"    # J

    .line 49
    sget-object v0, Lorg/junit/internal/management/ReflectiveThreadMXBean$Holder;->getThreadCpuTimeMethod:Ljava/lang/reflect/Method;

    const-string v1, "Unable to access ThreadMXBean"

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, "error":Ljava/lang/Exception;
    :try_start_0
    sget-object v2, Lorg/junit/internal/management/ReflectiveThreadMXBean$Holder;->getThreadCpuTimeMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lorg/junit/internal/management/ReflectiveThreadMXBean;->threadMxBean:Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 62
    :catch_0
    move-exception v2

    .line 63
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    move-object v0, v2

    goto :goto_1

    .line 59
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v2

    .line 60
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    move-object v0, v2

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 56
    :catch_2
    move-exception v2

    .line 57
    .local v2, "e":Ljava/lang/IllegalAccessException;
    move-object v0, v2

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 53
    :catch_3
    move-exception v2

    .line 54
    .local v2, "e":Ljava/lang/ClassCastException;
    move-object v0, v2

    .line 65
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :goto_0
    nop

    .line 66
    :goto_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2, v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 68
    .end local v0    # "error":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isThreadCpuTimeSupported()Z
    .locals 4

    .line 75
    sget-object v0, Lorg/junit/internal/management/ReflectiveThreadMXBean$Holder;->isThreadCpuTimeSupportedMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 77
    :try_start_0
    sget-object v0, Lorg/junit/internal/management/ReflectiveThreadMXBean$Holder;->isThreadCpuTimeSupportedMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/junit/internal/management/ReflectiveThreadMXBean;->threadMxBean:Ljava/lang/Object;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 84
    :catch_0
    move-exception v0

    goto :goto_1

    .line 82
    :catch_1
    move-exception v0

    goto :goto_0

    .line 80
    :catch_2
    move-exception v0

    goto :goto_0

    .line 78
    :catch_3
    move-exception v0

    .line 86
    :goto_0
    nop

    .line 88
    :cond_0
    :goto_1
    return v1
.end method
