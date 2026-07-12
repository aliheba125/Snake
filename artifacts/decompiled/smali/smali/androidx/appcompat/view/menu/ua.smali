.class public abstract Landroidx/appcompat/view/menu/ua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/gx;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/kh;

.field public final b:I

.field public final c:Landroidx/appcompat/view/menu/u8;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/kh;ILandroidx/appcompat/view/menu/u8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ua;->a:Landroidx/appcompat/view/menu/kh;

    iput p2, p0, Landroidx/appcompat/view/menu/ua;->b:I

    iput-object p3, p0, Landroidx/appcompat/view/menu/ua;->c:Landroidx/appcompat/view/menu/u8;

    return-void
.end method

.method public static synthetic d(Landroidx/appcompat/view/menu/ua;Landroidx/appcompat/view/menu/ts;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/ua$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Landroidx/appcompat/view/menu/ua$a;-><init>(Landroidx/appcompat/view/menu/ts;Landroidx/appcompat/view/menu/ua;Landroidx/appcompat/view/menu/xg;)V

    invoke-static {v0, p2}, Landroidx/appcompat/view/menu/uh;->b(Landroidx/appcompat/view/menu/tw;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroidx/appcompat/view/menu/ts;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/ua;->d(Landroidx/appcompat/view/menu/ua;Landroidx/appcompat/view/menu/ts;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroidx/appcompat/view/menu/kh;ILandroidx/appcompat/view/menu/u8;)Landroidx/appcompat/view/menu/ss;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ua;->a:Landroidx/appcompat/view/menu/kh;

    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/kh;->o(Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/kh;

    move-result-object p1

    sget-object v0, Landroidx/appcompat/view/menu/u8;->m:Landroidx/appcompat/view/menu/u8;

    if-eq p3, v0, :cond_0

    goto :goto_2

    :cond_0
    iget p3, p0, Landroidx/appcompat/view/menu/ua;->b:I

    const/4 v0, -0x3

    if-ne p3, v0, :cond_1

    goto :goto_1

    :cond_1
    if-ne p2, v0, :cond_2

    :goto_0
    move p2, p3

    goto :goto_1

    :cond_2
    const/4 v0, -0x2

    if-ne p3, v0, :cond_3

    goto :goto_1

    :cond_3
    if-ne p2, v0, :cond_4

    goto :goto_0

    :cond_4
    add-int/2addr p2, p3

    if-ltz p2, :cond_5

    goto :goto_1

    :cond_5
    const p2, 0x7fffffff

    :goto_1
    iget-object p3, p0, Landroidx/appcompat/view/menu/ua;->c:Landroidx/appcompat/view/menu/u8;

    :goto_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/ua;->a:Landroidx/appcompat/view/menu/kh;

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Landroidx/appcompat/view/menu/ua;->b:I

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Landroidx/appcompat/view/menu/ua;->c:Landroidx/appcompat/view/menu/u8;

    if-ne p3, v0, :cond_6

    return-object p0

    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/ua;->f(Landroidx/appcompat/view/menu/kh;ILandroidx/appcompat/view/menu/u8;)Landroidx/appcompat/view/menu/ua;

    move-result-object p1

    return-object p1
.end method

.method public abstract e(Landroidx/appcompat/view/menu/gk0;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;
.end method

.method public abstract f(Landroidx/appcompat/view/menu/kh;ILandroidx/appcompat/view/menu/u8;)Landroidx/appcompat/view/menu/ua;
.end method

.method public final g()Landroidx/appcompat/view/menu/tw;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/ua$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/ua$b;-><init>(Landroidx/appcompat/view/menu/ua;Landroidx/appcompat/view/menu/xg;)V

    return-object v0
.end method

.method public final h()I
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/ua;->b:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    const/4 v0, -0x2

    :cond_0
    return v0
.end method

.method public i(Landroidx/appcompat/view/menu/th;)Landroidx/appcompat/view/menu/vn0;
    .locals 9

    iget-object v1, p0, Landroidx/appcompat/view/menu/ua;->a:Landroidx/appcompat/view/menu/kh;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ua;->h()I

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/ua;->c:Landroidx/appcompat/view/menu/u8;

    sget-object v4, Landroidx/appcompat/view/menu/xh;->o:Landroidx/appcompat/view/menu/xh;

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ua;->g()Landroidx/appcompat/view/menu/tw;

    move-result-object v6

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Landroidx/appcompat/view/menu/ek0;->c(Landroidx/appcompat/view/menu/th;Landroidx/appcompat/view/menu/kh;ILandroidx/appcompat/view/menu/u8;Landroidx/appcompat/view/menu/xh;Landroidx/appcompat/view/menu/fw;Landroidx/appcompat/view/menu/tw;ILjava/lang/Object;)Landroidx/appcompat/view/menu/vn0;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ua;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/ua;->a:Landroidx/appcompat/view/menu/kh;

    sget-object v2, Landroidx/appcompat/view/menu/bo;->m:Landroidx/appcompat/view/menu/bo;

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/appcompat/view/menu/ua;->a:Landroidx/appcompat/view/menu/kh;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v1, p0, Landroidx/appcompat/view/menu/ua;->b:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/appcompat/view/menu/ua;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Landroidx/appcompat/view/menu/ua;->c:Landroidx/appcompat/view/menu/u8;

    sget-object v2, Landroidx/appcompat/view/menu/u8;->m:Landroidx/appcompat/view/menu/u8;

    if-eq v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBufferOverflow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/appcompat/view/menu/ua;->c:Landroidx/appcompat/view/menu/u8;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroidx/appcompat/view/menu/hj;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", "

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Landroidx/appcompat/view/menu/qc;->r(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Landroidx/appcompat/view/menu/fw;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
