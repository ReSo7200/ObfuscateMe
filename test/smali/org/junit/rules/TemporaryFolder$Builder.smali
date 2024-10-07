.class public Lorg/junit/rules/TemporaryFolder$Builder;
.super Ljava/lang/Object;
.source "TemporaryFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/rules/TemporaryFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private assureDeletion:Z

.field private parentFolder:Ljava/io/File;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/junit/rules/TemporaryFolder$Builder;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/junit/rules/TemporaryFolder$Builder;

    .line 96
    iget-object v0, p0, Lorg/junit/rules/TemporaryFolder$Builder;->parentFolder:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lorg/junit/rules/TemporaryFolder$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/junit/rules/TemporaryFolder$Builder;

    .line 96
    iget-boolean v0, p0, Lorg/junit/rules/TemporaryFolder$Builder;->assureDeletion:Z

    return v0
.end method


# virtual methods
.method public assureDeletion()Lorg/junit/rules/TemporaryFolder$Builder;
    .locals 1

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/junit/rules/TemporaryFolder$Builder;->assureDeletion:Z

    .line 123
    return-object p0
.end method

.method public build()Lorg/junit/rules/TemporaryFolder;
    .locals 1

    .line 130
    new-instance v0, Lorg/junit/rules/TemporaryFolder;

    invoke-direct {v0, p0}, Lorg/junit/rules/TemporaryFolder;-><init>(Lorg/junit/rules/TemporaryFolder$Builder;)V

    return-object v0
.end method

.method public parentFolder(Ljava/io/File;)Lorg/junit/rules/TemporaryFolder$Builder;
    .locals 0
    .param p1, "parentFolder"    # Ljava/io/File;

    .line 110
    iput-object p1, p0, Lorg/junit/rules/TemporaryFolder$Builder;->parentFolder:Ljava/io/File;

    .line 111
    return-object p0
.end method
