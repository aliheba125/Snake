.class public abstract Landroidx/appcompat/view/menu/xu0;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public O1(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;I)V
    .locals 0

    new-instance p2, Landroidx/appcompat/view/menu/xu0$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Landroidx/appcompat/view/menu/xu0$a;-><init>(Landroidx/appcompat/view/menu/xu0;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$y;->p(I)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$o;->P1(Landroidx/recyclerview/widget/RecyclerView$y;)V

    return-void
.end method
