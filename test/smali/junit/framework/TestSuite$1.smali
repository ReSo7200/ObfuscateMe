.class final Ljunit/framework/TestSuite$1;
.super Ljunit/framework/TestCase;
.source "TestSuite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljunit/framework/TestSuite;->warning(Ljava/lang/String;)Ljunit/framework/Test;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .line 93
    iput-object p2, p0, Ljunit/framework/TestSuite$1;->val$message:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljunit/framework/TestCase;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected runTest()V
    .locals 1

    .line 96
    iget-object v0, p0, Ljunit/framework/TestSuite$1;->val$message:Ljava/lang/String;

    invoke-static {v0}, Ljunit/framework/TestSuite$1;->fail(Ljava/lang/String;)V

    .line 97
    return-void
.end method
