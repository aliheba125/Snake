.class public Landroidx/appcompat/widget/a$e;
.super Landroidx/appcompat/view/menu/sc0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic m:Landroidx/appcompat/widget/a;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/a;Landroid/content/Context;Landroidx/appcompat/view/menu/mc0;Landroid/view/View;Z)V
    .locals 6

    iput-object p1, p0, Landroidx/appcompat/widget/a$e;->m:Landroidx/appcompat/widget/a;

    sget v5, Landroidx/appcompat/view/menu/am0;->f:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/sc0;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/mc0;Landroid/view/View;ZI)V

    const p2, 0x800005

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/sc0;->h(I)V

    iget-object p1, p1, Landroidx/appcompat/widget/a;->B:Landroidx/appcompat/widget/a$f;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/sc0;->j(Landroidx/appcompat/view/menu/uc0$a;)V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/a$e;->m:Landroidx/appcompat/widget/a;

    invoke-static {v0}, Landroidx/appcompat/widget/a;->p(Landroidx/appcompat/widget/a;)Landroidx/appcompat/view/menu/mc0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/a$e;->m:Landroidx/appcompat/widget/a;

    invoke-static {v0}, Landroidx/appcompat/widget/a;->q(Landroidx/appcompat/widget/a;)Landroidx/appcompat/view/menu/mc0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mc0;->close()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/a$e;->m:Landroidx/appcompat/widget/a;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/a;->x:Landroidx/appcompat/widget/a$e;

    invoke-super {p0}, Landroidx/appcompat/view/menu/sc0;->e()V

    return-void
.end method
