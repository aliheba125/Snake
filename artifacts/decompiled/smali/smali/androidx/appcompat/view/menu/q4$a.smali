.class public Landroidx/appcompat/view/menu/q4$a;
.super Landroidx/appcompat/view/menu/wa0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/q4;->h()Landroidx/appcompat/view/menu/wa0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Landroidx/appcompat/view/menu/q4;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/q4;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/q4$a;->d:Landroidx/appcompat/view/menu/q4;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/wa0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q4$a;->d:Landroidx/appcompat/view/menu/q4;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q4;->clear()V

    return-void
.end method

.method public b(II)Ljava/lang/Object;
    .locals 0

    iget-object p2, p0, Landroidx/appcompat/view/menu/q4$a;->d:Landroidx/appcompat/view/menu/q4;

    iget-object p2, p2, Landroidx/appcompat/view/menu/q4;->n:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1
.end method

.method public c()Ljava/util/Map;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q4$a;->d:Landroidx/appcompat/view/menu/q4;

    iget v0, v0, Landroidx/appcompat/view/menu/q4;->o:I

    return v0
.end method

.method public e(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q4$a;->d:Landroidx/appcompat/view/menu/q4;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/q4;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q4$a;->d:Landroidx/appcompat/view/menu/q4;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/q4;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Landroidx/appcompat/view/menu/q4$a;->d:Landroidx/appcompat/view/menu/q4;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/q4;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public h(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q4$a;->d:Landroidx/appcompat/view/menu/q4;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/q4;->n(I)Ljava/lang/Object;

    return-void
.end method

.method public i(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "not a map"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
