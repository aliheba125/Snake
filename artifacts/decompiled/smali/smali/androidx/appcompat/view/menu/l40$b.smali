.class public Landroidx/appcompat/view/menu/l40$b;
.super Landroidx/appcompat/view/menu/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/l40;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final o:Landroidx/appcompat/view/menu/l40;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/l40;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Landroidx/appcompat/view/menu/j;-><init>(II)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/l40$b;->o:Landroidx/appcompat/view/menu/l40;

    return-void
.end method


# virtual methods
.method public b(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/l40$b;->o:Landroidx/appcompat/view/menu/l40;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
