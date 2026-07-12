.class public abstract Landroidx/appcompat/view/menu/ba0$a;
.super Landroidx/appcompat/view/menu/e5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ba0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public final b:Landroidx/appcompat/view/menu/ba0;

.field public c:Landroidx/appcompat/view/menu/ba0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ba0;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/e5;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ba0$a;->b:Landroidx/appcompat/view/menu/ba0;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/appcompat/view/menu/ba0;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/ba0$a;->e(Landroidx/appcompat/view/menu/ba0;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Landroidx/appcompat/view/menu/ba0;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ba0$a;->b:Landroidx/appcompat/view/menu/ba0;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ba0$a;->c:Landroidx/appcompat/view/menu/ba0;

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/appcompat/view/menu/ba0;->j()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-static {v1, p1, p0, v0}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object p1, p0, Landroidx/appcompat/view/menu/ba0$a;->b:Landroidx/appcompat/view/menu/ba0;

    iget-object p2, p0, Landroidx/appcompat/view/menu/ba0$a;->c:Landroidx/appcompat/view/menu/ba0;

    invoke-static {p2}, Landroidx/appcompat/view/menu/z50;->b(Ljava/lang/Object;)V

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/ba0;->g(Landroidx/appcompat/view/menu/ba0;Landroidx/appcompat/view/menu/ba0;)V

    :cond_2
    return-void
.end method
