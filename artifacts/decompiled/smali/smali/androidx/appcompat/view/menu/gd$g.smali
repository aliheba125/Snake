.class public final Landroidx/appcompat/view/menu/gd$g;
.super Landroidx/appcompat/view/menu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/gd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "g"
.end annotation


# instance fields
.field public final m:Ljava/lang/Object;

.field public n:I

.field public final synthetic o:Landroidx/appcompat/view/menu/gd;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/gd;I)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/gd$g;->o:Landroidx/appcompat/view/menu/gd;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/l;-><init>()V

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/gd;->b(Landroidx/appcompat/view/menu/gd;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/gd$g;->m:Ljava/lang/Object;

    iput p2, p0, Landroidx/appcompat/view/menu/gd$g;->n:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, Landroidx/appcompat/view/menu/gd$g;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/gd$g;->o:Landroidx/appcompat/view/menu/gd;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/gd;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/gd$g;->m:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/appcompat/view/menu/gd$g;->o:Landroidx/appcompat/view/menu/gd;

    iget v2, p0, Landroidx/appcompat/view/menu/gd$g;->n:I

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/gd;->b(Landroidx/appcompat/view/menu/gd;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/xf0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/gd$g;->o:Landroidx/appcompat/view/menu/gd;

    iget-object v1, p0, Landroidx/appcompat/view/menu/gd$g;->m:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/gd;->i(Landroidx/appcompat/view/menu/gd;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/gd$g;->n:I

    :cond_1
    return-void
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/gd$g;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/gd$g;->o:Landroidx/appcompat/view/menu/gd;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/gd;->w()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/gd$g;->m:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/pf0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/gd$g;->a()V

    iget v0, p0, Landroidx/appcompat/view/menu/gd$g;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Landroidx/appcompat/view/menu/pf0;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/gd$g;->o:Landroidx/appcompat/view/menu/gd;

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/gd;->j(Landroidx/appcompat/view/menu/gd;I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/gd$g;->o:Landroidx/appcompat/view/menu/gd;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/gd;->w()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/gd$g;->m:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/pf0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/gd$g;->a()V

    iget v0, p0, Landroidx/appcompat/view/menu/gd$g;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/gd$g;->o:Landroidx/appcompat/view/menu/gd;

    iget-object v1, p0, Landroidx/appcompat/view/menu/gd$g;->m:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/view/menu/gd;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/appcompat/view/menu/pf0;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/gd$g;->o:Landroidx/appcompat/view/menu/gd;

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/gd;->j(Landroidx/appcompat/view/menu/gd;I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/gd$g;->o:Landroidx/appcompat/view/menu/gd;

    iget v2, p0, Landroidx/appcompat/view/menu/gd$g;->n:I

    invoke-static {v1, v2, p1}, Landroidx/appcompat/view/menu/gd;->f(Landroidx/appcompat/view/menu/gd;ILjava/lang/Object;)V

    return-object v0
.end method
