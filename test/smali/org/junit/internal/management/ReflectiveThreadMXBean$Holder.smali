.class final Lorg/junit/internal/management/ReflectiveThreadMXBean$Holder;
.super Ljava/lang/Object;
.source "ReflectiveThreadMXBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/internal/management/ReflectiveThreadMXBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final FAILURE_MESSAGE:Ljava/lang/String; = "Unable to access ThreadMXBean"

.field static final getThreadCpuTimeMethod:Ljava/lang/reflect/Method;

.field static final isThreadCpuTimeSupportedMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, "threadCpuTime":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .line 25
    .local v1, "threadCpuTimeSupported":Ljava/lang/reflect/Method;
    :try_start_0
    const-string v2, "java.lang.management.ThreadMXBean"

    invoke-static {v2}, Lorg/junit/internal/Classes;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 26
    .local v2, "threadMXBeanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getThreadCpuTime"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v0, v3

    .line 27
    const-string v3, "isThreadCpuTimeSupported"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .end local v2    # "threadMXBeanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 32
    :catch_0
    move-exception v2

    goto :goto_1

    .line 30
    :catch_1
    move-exception v2

    goto :goto_0

    .line 28
    :catch_2
    move-exception v2

    .line 34
    :goto_0
    nop

    .line 35
    :goto_1
    sput-object v0, Lorg/junit/internal/management/ReflectiveThreadMXBean$Holder;->getThreadCpuTimeMethod:Ljava/lang/reflect/Method;

    .line 36
    sput-object v1, Lorg/junit/internal/management/ReflectiveThreadMXBean$Holder;->isThreadCpuTimeSupportedMethod:Ljava/lang/reflect/Method;

    .line 37
    .end local v0    # "threadCpuTime":Ljava/lang/reflect/Method;
    .end local v1    # "threadCpuTimeSupported":Ljava/lang/reflect/Method;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
