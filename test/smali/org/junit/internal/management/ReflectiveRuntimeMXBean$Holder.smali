.class final Lorg/junit/internal/management/ReflectiveRuntimeMXBean$Holder;
.super Ljava/lang/Object;
.source "ReflectiveRuntimeMXBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/internal/management/ReflectiveRuntimeMXBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final getInputArgumentsMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 19
    const/4 v0, 0x0

    .line 21
    .local v0, "inputArguments":Ljava/lang/reflect/Method;
    :try_start_0
    const-string v1, "java.lang.management.RuntimeMXBean"

    invoke-static {v1}, Lorg/junit/internal/Classes;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 22
    .local v1, "threadMXBeanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "getInputArguments"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 29
    .end local v1    # "threadMXBeanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    goto :goto_1

    .line 27
    :catch_0
    move-exception v1

    goto :goto_1

    .line 25
    :catch_1
    move-exception v1

    goto :goto_0

    .line 23
    :catch_2
    move-exception v1

    goto :goto_0

    .line 30
    :goto_1
    sput-object v0, Lorg/junit/internal/management/ReflectiveRuntimeMXBean$Holder;->getInputArgumentsMethod:Ljava/lang/reflect/Method;

    .line 31
    .end local v0    # "inputArguments":Ljava/lang/reflect/Method;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/reflect/Method;
    .locals 1

    .line 16
    sget-object v0, Lorg/junit/internal/management/ReflectiveRuntimeMXBean$Holder;->getInputArgumentsMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method
