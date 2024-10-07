.class final Lorg/junit/internal/management/ManagementFactory$ThreadHolder;
.super Ljava/lang/Object;
.source "ManagementFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/internal/management/ManagementFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThreadHolder"
.end annotation


# static fields
.field private static final THREAD_MX_BEAN:Lorg/junit/internal/management/ThreadMXBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-string v0, "getThreadMXBean"

    invoke-static {v0}, Lorg/junit/internal/management/ManagementFactory$FactoryHolder;->getBeanObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/internal/management/ManagementFactory$ThreadHolder;->getBean(Ljava/lang/Object;)Lorg/junit/internal/management/ThreadMXBean;

    move-result-object v0

    sput-object v0, Lorg/junit/internal/management/ManagementFactory$ThreadHolder;->THREAD_MX_BEAN:Lorg/junit/internal/management/ThreadMXBean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lorg/junit/internal/management/ThreadMXBean;
    .locals 1

    .line 54
    sget-object v0, Lorg/junit/internal/management/ManagementFactory$ThreadHolder;->THREAD_MX_BEAN:Lorg/junit/internal/management/ThreadMXBean;

    return-object v0
.end method

.method private static final getBean(Ljava/lang/Object;)Lorg/junit/internal/management/ThreadMXBean;
    .locals 1
    .param p0, "threadMxBean"    # Ljava/lang/Object;

    .line 59
    if-eqz p0, :cond_0

    new-instance v0, Lorg/junit/internal/management/ReflectiveThreadMXBean;

    invoke-direct {v0, p0}, Lorg/junit/internal/management/ReflectiveThreadMXBean;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/junit/internal/management/FakeThreadMXBean;

    invoke-direct {v0}, Lorg/junit/internal/management/FakeThreadMXBean;-><init>()V

    :goto_0
    return-object v0
.end method
