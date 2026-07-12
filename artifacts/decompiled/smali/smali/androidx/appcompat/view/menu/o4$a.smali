.class public Landroidx/appcompat/view/menu/o4$a;
.super Landroidx/appcompat/view/menu/wa0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/o4;->n()Landroidx/appcompat/view/menu/wa0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Landroidx/appcompat/view/menu/o4;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/o4;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/o4$a;->d:Landroidx/appcompat/view/menu/o4;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/wa0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o4$a;->d:Landroidx/appcompat/view/menu/o4;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/nu0;->clear()V

    return-void
.end method

.method public b(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o4$a;->d:Landroidx/appcompat/view/menu/o4;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nu0;->n:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method public c()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o4$a;->d:Landroidx/appcompat/view/menu/o4;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o4$a;->d:Landroidx/appcompat/view/menu/o4;

    iget v0, v0, Landroidx/appcompat/view/menu/nu0;->o:I

    return v0
.end method

.method public e(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o4$a;->d:Landroidx/appcompat/view/menu/o4;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/nu0;->f(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o4$a;->d:Landroidx/appcompat/view/menu/o4;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/nu0;->h(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o4$a;->d:Landroidx/appcompat/view/menu/o4;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/nu0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public h(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o4$a;->d:Landroidx/appcompat/view/menu/o4;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/nu0;->k(I)Ljava/lang/Object;

    return-void
.end method

.method public i(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o4$a;->d:Landroidx/appcompat/view/menu/o4;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/nu0;->l(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
