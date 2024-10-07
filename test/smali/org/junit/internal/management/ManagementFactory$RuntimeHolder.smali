.class final Lorg/junit/internal/management/ManagementFactory$RuntimeHolder;
.super Ljava/lang/Object;
.source "ManagementFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/internal/management/ManagementFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RuntimeHolder"
.end annotation


# static fields
.field private static final RUNTIME_MX_BEAN:Lorg/junit/internal/management/RuntimeMXBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-string v0, "getRuntimeMXBean"

    invoke-static {v0}, Lorg/junit/internal/management/ManagementFactory$FactoryHolder;->getBeanObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/internal/management/ManagementFactory$RuntimeHolder;->getBean(Ljava/lang/Object;)Lorg/junit/internal/management/RuntimeMXBean;

    move-result-object v0

    sput-object v0, Lorg/junit/internal/management/ManagementFactory$RuntimeHolder;->RUNTIME_MX_BEAN:Lorg/junit/internal/management/RuntimeMXBean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/junit/internal/management/RuntimeMXBean;
    .locals 1

    .line 44
    sget-object v0, Lorg/junit/internal/management/ManagementFactory$RuntimeHolder;->RUNTIME_MX_BEAN:Lorg/junit/internal/management/RuntimeMXBean;

    return-object v0
.end method

.method private static final getBean(Ljava/lang/Object;)Lorg/junit/internal/management/RuntimeMXBean;
    .locals 1
    .param p0, "runtimeMxBean"    # Ljava/lang/Object;

    .line 49
    if-eqz p0, :cond_0

    new-instance v0, Lorg/junit/internal/management/ReflectiveRuntimeMXBean;

    invoke-direct {v0, p0}, Lorg/junit/internal/management/ReflectiveRuntimeMXBean;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/junit/internal/management/FakeRuntimeMXBean;

    invoke-direct {v0}, Lorg/junit/internal/management/FakeRuntimeMXBean;-><init>()V

    :goto_0
    return-object v0
.end method
