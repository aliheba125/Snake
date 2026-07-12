.class public final Landroidx/appcompat/view/menu/iu0$d;
.super Landroidx/appcompat/view/menu/g80;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/fw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/iu0;->g(Landroidx/window/sidecar/SidecarDisplayFeature;Landroidx/window/sidecar/SidecarDeviceState;)Landroidx/appcompat/view/menu/jm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final n:Landroidx/appcompat/view/menu/iu0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/iu0$d;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/iu0$d;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/iu0$d;->n:Landroidx/appcompat/view/menu/iu0$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/g80;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/window/sidecar/SidecarDisplayFeature;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "$this$require"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/window/sidecar/SidecarDisplayFeature;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/iu0$d;->a(Landroidx/window/sidecar/SidecarDisplayFeature;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
