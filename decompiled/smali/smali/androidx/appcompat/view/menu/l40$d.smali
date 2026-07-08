.class public Landroidx/appcompat/view/menu/l40$d;
.super Landroidx/appcompat/view/menu/l40;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/l40;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final transient o:I

.field public final transient p:I

.field public final synthetic q:Landroidx/appcompat/view/menu/l40;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/l40;II)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/l40$d;->q:Landroidx/appcompat/view/menu/l40;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/l40;-><init>()V

    iput p2, p0, Landroidx/appcompat/view/menu/l40$d;->o:I

    iput p3, p0, Landroidx/appcompat/view/menu/l40$d;->p:I

    return-void
.end method


# virtual methods
.method public A(II)Landroidx/appcompat/view/menu/l40;
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/l40$d;->p:I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/view/menu/nj0;->m(III)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/l40$d;->q:Landroidx/appcompat/view/menu/l40;

    iget v1, p0, Landroidx/appcompat/view/menu/l40$d;->o:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/l40;->A(II)Landroidx/appcompat/view/menu/l40;

    move-result-object p1

    return-object p1
.end method

.method public f()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/l40$d;->q:Landroidx/appcompat/view/menu/l40;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k40;->f()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/l40$d;->q:Landroidx/appcompat/view/menu/l40;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k40;->h()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/view/menu/l40$d;->o:I

    add-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/view/menu/l40$d;->p:I

    add-int/2addr v0, v1

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/l40$d;->p:I

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/nj0;->g(II)I

    iget-object v0, p0, Landroidx/appcompat/view/menu/l40$d;->q:Landroidx/appcompat/view/menu/l40;

    iget v1, p0, Landroidx/appcompat/view/menu/l40$d;->o:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h()I
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/l40$d;->q:Landroidx/appcompat/view/menu/l40;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k40;->h()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/view/menu/l40$d;->o:I

    add-int/2addr v0, v1

    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/l40;->r()Landroidx/appcompat/view/menu/t31;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/view/menu/l40;->s()Landroidx/appcompat/view/menu/u31;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/l40;->t(I)Landroidx/appcompat/view/menu/u31;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/l40$d;->p:I

    return v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/l40$d;->A(II)Landroidx/appcompat/view/menu/l40;

    move-result-object p1

    return-object p1
.end method
