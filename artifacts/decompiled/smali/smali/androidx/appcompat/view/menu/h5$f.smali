.class public final Landroidx/appcompat/view/menu/h5$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/tf0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/h5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final a:Landroidx/appcompat/view/menu/h5$f;

.field public static final b:Landroidx/appcompat/view/menu/ir;

.field public static final c:Landroidx/appcompat/view/menu/ir;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/h5$f;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/h5$f;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/h5$f;->a:Landroidx/appcompat/view/menu/h5$f;

    const-string v0, "networkType"

    invoke-static {v0}, Landroidx/appcompat/view/menu/ir;->d(Ljava/lang/String;)Landroidx/appcompat/view/menu/ir;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/h5$f;->b:Landroidx/appcompat/view/menu/ir;

    const-string v0, "mobileSubtype"

    invoke-static {v0}, Landroidx/appcompat/view/menu/ir;->d(Ljava/lang/String;)Landroidx/appcompat/view/menu/ir;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/h5$f;->c:Landroidx/appcompat/view/menu/ir;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/appcompat/view/menu/ve0;

    check-cast p2, Landroidx/appcompat/view/menu/uf0;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/h5$f;->b(Landroidx/appcompat/view/menu/ve0;Landroidx/appcompat/view/menu/uf0;)V

    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/ve0;Landroidx/appcompat/view/menu/uf0;)V
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/h5$f;->b:Landroidx/appcompat/view/menu/ir;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ve0;->c()Landroidx/appcompat/view/menu/ve0$c;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroidx/appcompat/view/menu/uf0;->e(Landroidx/appcompat/view/menu/ir;Ljava/lang/Object;)Landroidx/appcompat/view/menu/uf0;

    sget-object v0, Landroidx/appcompat/view/menu/h5$f;->c:Landroidx/appcompat/view/menu/ir;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ve0;->b()Landroidx/appcompat/view/menu/ve0$b;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Landroidx/appcompat/view/menu/uf0;->e(Landroidx/appcompat/view/menu/ir;Ljava/lang/Object;)Landroidx/appcompat/view/menu/uf0;

    return-void
.end method
