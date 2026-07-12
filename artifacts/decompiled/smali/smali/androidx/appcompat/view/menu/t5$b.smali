.class public final Landroidx/appcompat/view/menu/t5$b;
.super Landroidx/appcompat/view/menu/ap$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/t5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:Landroidx/appcompat/view/menu/jo;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/Long;

.field public f:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/ap$a;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Landroidx/appcompat/view/menu/ap;
    .locals 12

    iget-object v0, p0, Landroidx/appcompat/view/menu/t5$b;->a:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transportName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/t5$b;->c:Landroidx/appcompat/view/menu/jo;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " encodedPayload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/t5$b;->d:Ljava/lang/Long;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " eventMillis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/t5$b;->e:Ljava/lang/Long;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uptimeMillis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/t5$b;->f:Ljava/util/Map;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " autoMetadata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroidx/appcompat/view/menu/t5;

    iget-object v3, p0, Landroidx/appcompat/view/menu/t5$b;->a:Ljava/lang/String;

    iget-object v4, p0, Landroidx/appcompat/view/menu/t5$b;->b:Ljava/lang/Integer;

    iget-object v5, p0, Landroidx/appcompat/view/menu/t5$b;->c:Landroidx/appcompat/view/menu/jo;

    iget-object v1, p0, Landroidx/appcompat/view/menu/t5$b;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v1, p0, Landroidx/appcompat/view/menu/t5$b;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, p0, Landroidx/appcompat/view/menu/t5$b;->f:Ljava/util/Map;

    const/4 v11, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Landroidx/appcompat/view/menu/t5;-><init>(Ljava/lang/String;Ljava/lang/Integer;Landroidx/appcompat/view/menu/jo;JJLjava/util/Map;Landroidx/appcompat/view/menu/t5$a;)V

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

.method public e()Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/t5$b;->f:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"autoMetadata\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(Ljava/util/Map;)Landroidx/appcompat/view/menu/ap$a;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/appcompat/view/menu/t5$b;->f:Ljava/util/Map;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null autoMetadata"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Ljava/lang/Integer;)Landroidx/appcompat/view/menu/ap$a;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/t5$b;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public h(Landroidx/appcompat/view/menu/jo;)Landroidx/appcompat/view/menu/ap$a;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/appcompat/view/menu/t5$b;->c:Landroidx/appcompat/view/menu/jo;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null encodedPayload"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(J)Landroidx/appcompat/view/menu/ap$a;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/t5$b;->d:Ljava/lang/Long;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Landroidx/appcompat/view/menu/ap$a;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/appcompat/view/menu/t5$b;->a:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null transportName"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(J)Landroidx/appcompat/view/menu/ap$a;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/t5$b;->e:Ljava/lang/Long;

    return-object p0
.end method
