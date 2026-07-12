.class public final Landroidx/appcompat/view/menu/n5$b;
.super Landroidx/appcompat/view/menu/s7$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/n5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/Iterable;

.field public b:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/s7$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/s7;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/n5$b;->a:Ljava/lang/Iterable;

    const-string v1, ""

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " events"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/appcompat/view/menu/n5;

    iget-object v1, p0, Landroidx/appcompat/view/menu/n5$b;->a:Ljava/lang/Iterable;

    iget-object v2, p0, Landroidx/appcompat/view/menu/n5$b;->b:[B

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/view/menu/n5;-><init>(Ljava/lang/Iterable;[BLandroidx/appcompat/view/menu/n5$a;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/Iterable;)Landroidx/appcompat/view/menu/s7$a;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/appcompat/view/menu/n5$b;->a:Ljava/lang/Iterable;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null events"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c([B)Landroidx/appcompat/view/menu/s7$a;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/n5$b;->b:[B

    return-object p0
.end method
