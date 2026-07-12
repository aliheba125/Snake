.class public Landroidx/appcompat/view/menu/ul$e;
.super Landroidx/appcompat/view/menu/dv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/ul;->g()Landroidx/appcompat/view/menu/dv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/dv;

.field public final synthetic b:Landroidx/appcompat/view/menu/ul;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ul;Landroidx/appcompat/view/menu/dv;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ul$e;->b:Landroidx/appcompat/view/menu/ul;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ul$e;->a:Landroidx/appcompat/view/menu/dv;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/dv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ul$e;->a:Landroidx/appcompat/view/menu/dv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/dv;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/ul$e;->a:Landroidx/appcompat/view/menu/dv;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/dv;->a(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ul$e;->b:Landroidx/appcompat/view/menu/ul;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/ul;->m1(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ul$e;->a:Landroidx/appcompat/view/menu/dv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/dv;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ul$e;->b:Landroidx/appcompat/view/menu/ul;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ul;->n1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
