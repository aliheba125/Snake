.class public abstract Landroidx/appcompat/view/menu/x71;
.super Landroidx/appcompat/view/menu/mf;
.source "SourceFile"


# instance fields
.field public w0:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/mf;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/x71;->w0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public abstract K0()V
.end method

.method public L0(Landroidx/appcompat/view/menu/mf;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/x71;->w0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/mf;->w0(Landroidx/appcompat/view/menu/mf;)V

    return-void
.end method

.method public M0()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/x71;->w0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public Y()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/x71;->w0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Landroidx/appcompat/view/menu/mf;->Y()V

    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/mf;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/x71;->w0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/mf;->G()Landroidx/appcompat/view/menu/mf;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/mf;->G()Landroidx/appcompat/view/menu/mf;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/x71;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/x71;->L0(Landroidx/appcompat/view/menu/mf;)V

    :cond_0
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/mf;->w0(Landroidx/appcompat/view/menu/mf;)V

    return-void
.end method

.method public a0(Landroidx/appcompat/view/menu/i9;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/mf;->a0(Landroidx/appcompat/view/menu/i9;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/x71;->w0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/appcompat/view/menu/x71;->w0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/mf;

    invoke-virtual {v2, p1}, Landroidx/appcompat/view/menu/mf;->a0(Landroidx/appcompat/view/menu/i9;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
