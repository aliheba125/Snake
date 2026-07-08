.class public final Landroidx/appcompat/view/menu/ta2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/ey0;


# static fields
.field public static n:Landroidx/appcompat/view/menu/ta2;


# instance fields
.field public final m:Landroidx/appcompat/view/menu/ey0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/ta2;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/ta2;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/ta2;->n:Landroidx/appcompat/view/menu/ta2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/va2;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/va2;-><init>()V

    invoke-static {v0}, Landroidx/appcompat/view/menu/gy0;->b(Ljava/lang/Object;)Landroidx/appcompat/view/menu/ey0;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/ta2;->m:Landroidx/appcompat/view/menu/ey0;

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/ta2;->n:Landroidx/appcompat/view/menu/ta2;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ta2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/sa2;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/sa2;->a()Z

    move-result v0

    return v0
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/ta2;->n:Landroidx/appcompat/view/menu/ta2;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ta2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/sa2;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/sa2;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ta2;->m:Landroidx/appcompat/view/menu/ey0;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/ey0;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/sa2;

    return-object v0
.end method
