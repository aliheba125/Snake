.class public Landroidx/appcompat/view/menu/gd$b;
.super Landroidx/appcompat/view/menu/gd$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/gd;->y()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic q:Landroidx/appcompat/view/menu/gd;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/gd;)V
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/view/menu/gd$b;->q:Landroidx/appcompat/view/menu/gd;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/gd$e;-><init>(Landroidx/appcompat/view/menu/gd;Landroidx/appcompat/view/menu/gd$a;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/gd$b;->e(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public e(I)Ljava/util/Map$Entry;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/gd$g;

    iget-object v1, p0, Landroidx/appcompat/view/menu/gd$b;->q:Landroidx/appcompat/view/menu/gd;

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/gd$g;-><init>(Landroidx/appcompat/view/menu/gd;I)V

    return-object v0
.end method
