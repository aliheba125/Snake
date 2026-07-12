.class public final Landroidx/appcompat/view/menu/bw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/hf2;


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/rv1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/rv1;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/bw1;->a:Landroidx/appcompat/view/menu/rv1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/qe2;Ljava/lang/String;Ljava/util/List;ZZ)V
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/fw1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_7

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_1

    const/4 p4, 0x4

    if-eq p1, p4, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/bw1;->a:Landroidx/appcompat/view/menu/rv1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->J()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/bw1;->a:Landroidx/appcompat/view/menu/rv1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    iget-object p1, p0, Landroidx/appcompat/view/menu/bw1;->a:Landroidx/appcompat/view/menu/rv1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->N()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-nez p5, :cond_3

    iget-object p1, p0, Landroidx/appcompat/view/menu/bw1;->a:Landroidx/appcompat/view/menu/rv1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->M()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/appcompat/view/menu/bw1;->a:Landroidx/appcompat/view/menu/rv1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_5

    iget-object p1, p0, Landroidx/appcompat/view/menu/bw1;->a:Landroidx/appcompat/view/menu/rv1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->I()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    goto :goto_0

    :cond_5
    if-nez p5, :cond_6

    iget-object p1, p0, Landroidx/appcompat/view/menu/bw1;->a:Landroidx/appcompat/view/menu/rv1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->H()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    goto :goto_0

    :cond_6
    iget-object p1, p0, Landroidx/appcompat/view/menu/bw1;->a:Landroidx/appcompat/view/menu/rv1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    goto :goto_0

    :cond_7
    iget-object p1, p0, Landroidx/appcompat/view/menu/bw1;->a:Landroidx/appcompat/view/menu/rv1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    const/4 p5, 0x0

    if-eq p4, v2, :cond_a

    if-eq p4, v1, :cond_9

    if-eq p4, v0, :cond_8

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p4, p5, p3}, Landroidx/appcompat/view/menu/st1;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_9
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p4, p3}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_a
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
