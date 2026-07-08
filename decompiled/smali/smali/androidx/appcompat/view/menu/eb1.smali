.class public final Landroidx/appcompat/view/menu/eb1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/gg0;


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/bz0;

.field public final synthetic b:Landroidx/appcompat/view/menu/gb1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/gb1;Landroidx/appcompat/view/menu/bz0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/eb1;->b:Landroidx/appcompat/view/menu/gb1;

    iput-object p2, p0, Landroidx/appcompat/view/menu/eb1;->a:Landroidx/appcompat/view/menu/bz0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/zy0;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/view/menu/eb1;->b:Landroidx/appcompat/view/menu/gb1;

    invoke-static {p1}, Landroidx/appcompat/view/menu/gb1;->a(Landroidx/appcompat/view/menu/gb1;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/eb1;->a:Landroidx/appcompat/view/menu/bz0;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
