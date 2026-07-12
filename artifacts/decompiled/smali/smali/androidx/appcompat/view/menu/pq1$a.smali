.class public final Landroidx/appcompat/view/menu/pq1$a;
.super Landroidx/appcompat/view/menu/q02$b;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/a42;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/pq1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Landroidx/appcompat/view/menu/pq1;->N()Landroidx/appcompat/view/menu/pq1;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/q02$b;-><init>(Landroidx/appcompat/view/menu/q02;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/nq1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/view/menu/pq1$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final r()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q02$b;->n:Landroidx/appcompat/view/menu/q02;

    check-cast v0, Landroidx/appcompat/view/menu/pq1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pq1;->j()I

    move-result v0

    return v0
.end method

.method public final s(ILandroidx/appcompat/view/menu/qq1;)Landroidx/appcompat/view/menu/pq1$a;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q02$b;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/q02$b;->n:Landroidx/appcompat/view/menu/q02;

    check-cast v0, Landroidx/appcompat/view/menu/pq1;

    invoke-static {v0, p1, p2}, Landroidx/appcompat/view/menu/pq1;->I(Landroidx/appcompat/view/menu/pq1;ILandroidx/appcompat/view/menu/qq1;)V

    return-object p0
.end method

.method public final t(Ljava/lang/String;)Landroidx/appcompat/view/menu/pq1$a;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q02$b;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/q02$b;->n:Landroidx/appcompat/view/menu/q02;

    check-cast v0, Landroidx/appcompat/view/menu/pq1;

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/pq1;->J(Landroidx/appcompat/view/menu/pq1;Ljava/lang/String;)V

    return-object p0
.end method

.method public final u(I)Landroidx/appcompat/view/menu/qq1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q02$b;->n:Landroidx/appcompat/view/menu/q02;

    check-cast v0, Landroidx/appcompat/view/menu/pq1;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/pq1;->G(I)Landroidx/appcompat/view/menu/qq1;

    move-result-object p1

    return-object p1
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q02$b;->n:Landroidx/appcompat/view/menu/q02;

    check-cast v0, Landroidx/appcompat/view/menu/pq1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pq1;->P()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
