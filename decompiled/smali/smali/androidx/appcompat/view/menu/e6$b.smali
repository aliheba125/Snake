.class public final Landroidx/appcompat/view/menu/e6$b;
.super Landroidx/appcompat/view/menu/ai0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/e6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroidx/appcompat/view/menu/zh0$a;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/Long;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ai0$a;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/ai0;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ai0$a;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/e6$b;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->g()Landroidx/appcompat/view/menu/zh0$a;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/e6$b;->b:Landroidx/appcompat/view/menu/zh0$a;

    .line 6
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/e6$b;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/e6$b;->d:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/e6$b;->e:Ljava/lang/Long;

    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/e6$b;->f:Ljava/lang/Long;

    .line 10
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/e6$b;->g:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/ai0;Landroidx/appcompat/view/menu/e6$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/e6$b;-><init>(Landroidx/appcompat/view/menu/ai0;)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/ai0;
    .locals 13

    iget-object v0, p0, Landroidx/appcompat/view/menu/e6$b;->b:Landroidx/appcompat/view/menu/zh0$a;

    const-string v1, ""

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " registrationStatus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/e6$b;->e:Ljava/lang/Long;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expiresInSecs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/e6$b;->f:Ljava/lang/Long;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tokenCreationEpochInSecs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroidx/appcompat/view/menu/e6;

    iget-object v3, p0, Landroidx/appcompat/view/menu/e6$b;->a:Ljava/lang/String;

    iget-object v4, p0, Landroidx/appcompat/view/menu/e6$b;->b:Landroidx/appcompat/view/menu/zh0$a;

    iget-object v5, p0, Landroidx/appcompat/view/menu/e6$b;->c:Ljava/lang/String;

    iget-object v6, p0, Landroidx/appcompat/view/menu/e6$b;->d:Ljava/lang/String;

    iget-object v1, p0, Landroidx/appcompat/view/menu/e6$b;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v1, p0, Landroidx/appcompat/view/menu/e6$b;->f:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, p0, Landroidx/appcompat/view/menu/e6$b;->g:Ljava/lang/String;

    const/4 v12, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Landroidx/appcompat/view/menu/e6;-><init>(Ljava/lang/String;Landroidx/appcompat/view/menu/zh0$a;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Landroidx/appcompat/view/menu/e6$a;)V

    return-object v0

    :cond_3
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

.method public b(Ljava/lang/String;)Landroidx/appcompat/view/menu/ai0$a;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/e6$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(J)Landroidx/appcompat/view/menu/ai0$a;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/e6$b;->e:Ljava/lang/Long;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Landroidx/appcompat/view/menu/ai0$a;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/e6$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Landroidx/appcompat/view/menu/ai0$a;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/e6$b;->g:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Landroidx/appcompat/view/menu/ai0$a;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/e6$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public g(Landroidx/appcompat/view/menu/zh0$a;)Landroidx/appcompat/view/menu/ai0$a;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/appcompat/view/menu/e6$b;->b:Landroidx/appcompat/view/menu/zh0$a;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null registrationStatus"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(J)Landroidx/appcompat/view/menu/ai0$a;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/e6$b;->f:Ljava/lang/Long;

    return-object p0
.end method
