.class public final Landroidx/appcompat/view/menu/i6$b;
.super Landroidx/appcompat/view/menu/ns0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/i6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Landroidx/appcompat/view/menu/d21;

.field public b:Ljava/lang/String;

.field public c:Landroidx/appcompat/view/menu/wo;

.field public d:Landroidx/appcompat/view/menu/r11;

.field public e:Landroidx/appcompat/view/menu/lo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/ns0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/ns0;
    .locals 9

    iget-object v0, p0, Landroidx/appcompat/view/menu/i6$b;->a:Landroidx/appcompat/view/menu/d21;

    const-string v1, ""

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transportContext"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i6$b;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transportName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i6$b;->c:Landroidx/appcompat/view/menu/wo;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/i6$b;->d:Landroidx/appcompat/view/menu/r11;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transformer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/i6$b;->e:Landroidx/appcompat/view/menu/lo;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " encoding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroidx/appcompat/view/menu/i6;

    iget-object v3, p0, Landroidx/appcompat/view/menu/i6$b;->a:Landroidx/appcompat/view/menu/d21;

    iget-object v4, p0, Landroidx/appcompat/view/menu/i6$b;->b:Ljava/lang/String;

    iget-object v5, p0, Landroidx/appcompat/view/menu/i6$b;->c:Landroidx/appcompat/view/menu/wo;

    iget-object v6, p0, Landroidx/appcompat/view/menu/i6$b;->d:Landroidx/appcompat/view/menu/r11;

    iget-object v7, p0, Landroidx/appcompat/view/menu/i6$b;->e:Landroidx/appcompat/view/menu/lo;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroidx/appcompat/view/menu/i6;-><init>(Landroidx/appcompat/view/menu/d21;Ljava/lang/String;Landroidx/appcompat/view/menu/wo;Landroidx/appcompat/view/menu/r11;Landroidx/appcompat/view/menu/lo;Landroidx/appcompat/view/menu/i6$a;)V

    return-object v0

    :cond_5
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

.method public b(Landroidx/appcompat/view/menu/lo;)Landroidx/appcompat/view/menu/ns0$a;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/appcompat/view/menu/i6$b;->e:Landroidx/appcompat/view/menu/lo;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null encoding"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Landroidx/appcompat/view/menu/wo;)Landroidx/appcompat/view/menu/ns0$a;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/appcompat/view/menu/i6$b;->c:Landroidx/appcompat/view/menu/wo;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null event"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Landroidx/appcompat/view/menu/r11;)Landroidx/appcompat/view/menu/ns0$a;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/appcompat/view/menu/i6$b;->d:Landroidx/appcompat/view/menu/r11;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null transformer"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Landroidx/appcompat/view/menu/d21;)Landroidx/appcompat/view/menu/ns0$a;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/appcompat/view/menu/i6$b;->a:Landroidx/appcompat/view/menu/d21;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null transportContext"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Ljava/lang/String;)Landroidx/appcompat/view/menu/ns0$a;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/appcompat/view/menu/i6$b;->b:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null transportName"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
