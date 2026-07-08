.class public Landroidx/appcompat/view/menu/jo0$a$a;
.super Landroidx/appcompat/view/menu/l40;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/jo0$a;->s()Landroidx/appcompat/view/menu/l40;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Landroidx/appcompat/view/menu/jo0$a;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/jo0$a;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/jo0$a$a;->o:Landroidx/appcompat/view/menu/jo0$a;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/l40;-><init>()V

    return-void
.end method


# virtual methods
.method public C(I)Ljava/util/Map$Entry;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/jo0$a$a;->o:Landroidx/appcompat/view/menu/jo0$a;

    invoke-static {v0}, Landroidx/appcompat/view/menu/jo0$a;->z(Landroidx/appcompat/view/menu/jo0$a;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/nj0;->g(II)I

    iget-object v0, p0, Landroidx/appcompat/view/menu/jo0$a$a;->o:Landroidx/appcompat/view/menu/jo0$a;

    invoke-static {v0}, Landroidx/appcompat/view/menu/jo0$a;->A(Landroidx/appcompat/view/menu/jo0$a;)[Ljava/lang/Object;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x2

    iget-object v1, p0, Landroidx/appcompat/view/menu/jo0$a$a;->o:Landroidx/appcompat/view/menu/jo0$a;

    invoke-static {v1}, Landroidx/appcompat/view/menu/jo0$a;->B(Landroidx/appcompat/view/menu/jo0$a;)I

    move-result v1

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/appcompat/view/menu/jo0$a$a;->o:Landroidx/appcompat/view/menu/jo0$a;

    invoke-static {v1}, Landroidx/appcompat/view/menu/jo0$a;->A(Landroidx/appcompat/view/menu/jo0$a;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/jo0$a$a;->o:Landroidx/appcompat/view/menu/jo0$a;

    invoke-static {v2}, Landroidx/appcompat/view/menu/jo0$a;->B(Landroidx/appcompat/view/menu/jo0$a;)I

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr p1, v2

    aget-object p1, v1, p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/jo0$a$a;->C(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/jo0$a$a;->o:Landroidx/appcompat/view/menu/jo0$a;

    invoke-static {v0}, Landroidx/appcompat/view/menu/jo0$a;->z(Landroidx/appcompat/view/menu/jo0$a;)I

    move-result v0

    return v0
.end method
