.class public Lorg/junit/runner/Result;
.super Ljava/lang/Object;
.source "Result.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/runner/Result$SerializedForm;,
        Lorg/junit/runner/Result$Listener;
    }
.end annotation


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final assumptionFailureCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final count:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final failures:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/junit/runner/notification/Failure;",
            ">;"
        }
    .end annotation
.end field

.field private final ignoreCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final runTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private serializedForm:Lorg/junit/runner/Result$SerializedForm;

.field private final startTime:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lorg/junit/runner/Result$SerializedForm;

    invoke-static {v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getFields()[Ljava/io/ObjectStreamField;

    move-result-object v0

    sput-object v0, Lorg/junit/runner/Result;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/junit/runner/Result;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/junit/runner/Result;->ignoreCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/junit/runner/Result;->assumptionFailureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/junit/runner/Result;->failures:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/junit/runner/Result;->runTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/junit/runner/Result;->startTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 46
    return-void
.end method

.method private constructor <init>(Lorg/junit/runner/Result$SerializedForm;)V
    .locals 3
    .param p1, "serializedForm"    # Lorg/junit/runner/Result$SerializedForm;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lorg/junit/runner/Result$SerializedForm;->access$000(Lorg/junit/runner/Result$SerializedForm;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/runner/Result;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    invoke-static {p1}, Lorg/junit/runner/Result$SerializedForm;->access$100(Lorg/junit/runner/Result$SerializedForm;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/runner/Result;->ignoreCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    invoke-static {p1}, Lorg/junit/runner/Result$SerializedForm;->access$200(Lorg/junit/runner/Result$SerializedForm;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/runner/Result;->assumptionFailureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1}, Lorg/junit/runner/Result$SerializedForm;->access$300(Lorg/junit/runner/Result$SerializedForm;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/junit/runner/Result;->failures:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1}, Lorg/junit/runner/Result$SerializedForm;->access$400(Lorg/junit/runner/Result$SerializedForm;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/junit/runner/Result;->runTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1}, Lorg/junit/runner/Result$SerializedForm;->access$500(Lorg/junit/runner/Result$SerializedForm;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/junit/runner/Result;->startTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 55
    return-void
.end method

.method static synthetic access$1000(Lorg/junit/runner/Result;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/junit/runner/Result;

    .line 25
    iget-object v0, p0, Lorg/junit/runner/Result;->ignoreCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/junit/runner/Result;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/junit/runner/Result;

    .line 25
    iget-object v0, p0, Lorg/junit/runner/Result;->assumptionFailureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$600(Lorg/junit/runner/Result;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lorg/junit/runner/Result;

    .line 25
    iget-object v0, p0, Lorg/junit/runner/Result;->startTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$700(Lorg/junit/runner/Result;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lorg/junit/runner/Result;

    .line 25
    iget-object v0, p0, Lorg/junit/runner/Result;->runTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$800(Lorg/junit/runner/Result;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/junit/runner/Result;

    .line 25
    iget-object v0, p0, Lorg/junit/runner/Result;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$900(Lorg/junit/runner/Result;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/junit/runner/Result;

    .line 25
    iget-object v0, p0, Lorg/junit/runner/Result;->failures:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-static {p1}, Lorg/junit/runner/Result$SerializedForm;->deserialize(Ljava/io/ObjectInputStream;)Lorg/junit/runner/Result$SerializedForm;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/runner/Result;->serializedForm:Lorg/junit/runner/Result$SerializedForm;

    .line 121
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .line 124
    new-instance v0, Lorg/junit/runner/Result;

    iget-object v1, p0, Lorg/junit/runner/Result;->serializedForm:Lorg/junit/runner/Result$SerializedForm;

    invoke-direct {v0, v1}, Lorg/junit/runner/Result;-><init>(Lorg/junit/runner/Result$SerializedForm;)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    new-instance v0, Lorg/junit/runner/Result$SerializedForm;

    invoke-direct {v0, p0}, Lorg/junit/runner/Result$SerializedForm;-><init>(Lorg/junit/runner/Result;)V

    .line 115
    .local v0, "serializedForm":Lorg/junit/runner/Result$SerializedForm;
    invoke-virtual {v0, p1}, Lorg/junit/runner/Result$SerializedForm;->serialize(Ljava/io/ObjectOutputStream;)V

    .line 116
    return-void
.end method


# virtual methods
.method public createListener()Lorg/junit/runner/notification/RunListener;
    .locals 2

    .line 165
    new-instance v0, Lorg/junit/runner/Result$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/junit/runner/Result$Listener;-><init>(Lorg/junit/runner/Result;Lorg/junit/runner/Result$1;)V

    return-object v0
.end method

.method public getAssumptionFailureCount()I
    .locals 2

    .line 99
    iget-object v0, p0, Lorg/junit/runner/Result;->assumptionFailureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/junit/runner/Result;->assumptionFailureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Result was serialized from a version of JUnit that doesn\'t support this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFailureCount()I
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/junit/runner/Result;->failures:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFailures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/junit/runner/notification/Failure;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/junit/runner/Result;->failures:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getIgnoreCount()I
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/junit/runner/Result;->ignoreCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getRunCount()I
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/junit/runner/Result;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getRunTime()J
    .locals 2

    .line 75
    iget-object v0, p0, Lorg/junit/runner/Result;->runTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public wasSuccessful()Z
    .locals 1

    .line 110
    invoke-virtual {p0}, Lorg/junit/runner/Result;->getFailureCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
