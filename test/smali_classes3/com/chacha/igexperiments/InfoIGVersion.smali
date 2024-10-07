.class public Lcom/chacha/igexperiments/InfoIGVersion;
.super Ljava/lang/Object;
.source "InfoIGVersion.java"


# instance fields
.field private final classToHook:Ljava/lang/String;

.field private final methodToHook:Ljava/lang/String;

.field private final secondClassToHook:Ljava/lang/String;

.field private final url:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "classToHook"    # Ljava/lang/String;
    .param p3, "methodToHook"    # Ljava/lang/String;
    .param p4, "secondClassToHook"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/chacha/igexperiments/InfoIGVersion;->version:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/chacha/igexperiments/InfoIGVersion;->classToHook:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/chacha/igexperiments/InfoIGVersion;->methodToHook:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/chacha/igexperiments/InfoIGVersion;->secondClassToHook:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/chacha/igexperiments/InfoIGVersion;->url:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getClassToHook()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/chacha/igexperiments/InfoIGVersion;->classToHook:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodToHook()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/chacha/igexperiments/InfoIGVersion;->methodToHook:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondClassToHook()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/chacha/igexperiments/InfoIGVersion;->secondClassToHook:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/chacha/igexperiments/InfoIGVersion;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/chacha/igexperiments/InfoIGVersion;->version:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/chacha/igexperiments/InfoIGVersion;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
