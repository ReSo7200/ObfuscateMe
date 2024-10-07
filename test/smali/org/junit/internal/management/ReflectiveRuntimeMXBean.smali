.class final Lorg/junit/internal/management/ReflectiveRuntimeMXBean;
.super Ljava/lang/Object;
.source "ReflectiveRuntimeMXBean.java"

# interfaces
.implements Lorg/junit/internal/management/RuntimeMXBean;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/internal/management/ReflectiveRuntimeMXBean$Holder;
    }
.end annotation


# instance fields
.field private final runtimeMxBean:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "runtimeMxBean"    # Ljava/lang/Object;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/junit/internal/management/ReflectiveRuntimeMXBean;->runtimeMxBean:Ljava/lang/Object;

    .line 37
    return-void
.end method


# virtual methods
.method public getInputArguments()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-static {}, Lorg/junit/internal/management/ReflectiveRuntimeMXBean$Holder;->access$000()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    :try_start_0
    invoke-static {}, Lorg/junit/internal/management/ReflectiveRuntimeMXBean$Holder;->access$000()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lorg/junit/internal/management/ReflectiveRuntimeMXBean;->runtimeMxBean:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 53
    :catch_0
    move-exception v0

    goto :goto_1

    .line 51
    :catch_1
    move-exception v0

    goto :goto_0

    .line 49
    :catch_2
    move-exception v0

    goto :goto_0

    .line 47
    :catch_3
    move-exception v0

    .line 55
    :goto_0
    nop

    .line 57
    :cond_0
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
