.class public abstract Landroidx/appcompat/view/menu/zg;
.super Landroidx/appcompat/view/menu/y7;
.source "SourceFile"


# instance fields
.field public final n:Landroidx/appcompat/view/menu/kh;

.field public transient o:Landroidx/appcompat/view/menu/xg;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/xg;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Landroidx/appcompat/view/menu/xg;->b()Landroidx/appcompat/view/menu/kh;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/zg;-><init>(Landroidx/appcompat/view/menu/xg;Landroidx/appcompat/view/menu/kh;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/xg;Landroidx/appcompat/view/menu/kh;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/y7;-><init>(Landroidx/appcompat/view/menu/xg;)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/zg;->n:Landroidx/appcompat/view/menu/kh;

    return-void
.end method


# virtual methods
.method public b()Landroidx/appcompat/view/menu/kh;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/zg;->n:Landroidx/appcompat/view/menu/kh;

    invoke-static {v0}, Landroidx/appcompat/view/menu/z50;->b(Ljava/lang/Object;)V

    return-object v0
.end method

.method public l()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/zg;->o:Landroidx/appcompat/view/menu/xg;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/zg;->b()Landroidx/appcompat/view/menu/kh;

    move-result-object v1

    sget-object v2, Landroidx/appcompat/view/menu/ah;->b:Landroidx/appcompat/view/menu/ah$b;

    invoke-interface {v1, v2}, Landroidx/appcompat/view/menu/kh;->d(Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh$b;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/z50;->b(Ljava/lang/Object;)V

    check-cast v1, Landroidx/appcompat/view/menu/ah;

    invoke-interface {v1, v0}, Landroidx/appcompat/view/menu/ah;->x(Landroidx/appcompat/view/menu/xg;)V

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/md;->m:Landroidx/appcompat/view/menu/md;

    iput-object v0, p0, Landroidx/appcompat/view/menu/zg;->o:Landroidx/appcompat/view/menu/xg;

    return-void
.end method

.method public final m()Landroidx/appcompat/view/menu/xg;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/zg;->o:Landroidx/appcompat/view/menu/xg;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/zg;->b()Landroidx/appcompat/view/menu/kh;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/ah;->b:Landroidx/appcompat/view/menu/ah$b;

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/kh;->d(Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh$b;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/ah;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroidx/appcompat/view/menu/ah;->z(Landroidx/appcompat/view/menu/xg;)Landroidx/appcompat/view/menu/xg;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    :cond_1
    iput-object v0, p0, Landroidx/appcompat/view/menu/zg;->o:Landroidx/appcompat/view/menu/xg;

    :cond_2
    return-object v0
.end method
