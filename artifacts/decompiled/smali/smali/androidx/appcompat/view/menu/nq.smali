.class public final Landroidx/appcompat/view/menu/nq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/nq;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/nq;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/nq;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/nq;->a:Landroidx/appcompat/view/menu/nq;

    const-class v0, Landroidx/appcompat/view/menu/nq;

    invoke-static {v0}, Landroidx/appcompat/view/menu/do0;->b(Ljava/lang/Class;)Landroidx/appcompat/view/menu/k70;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/k70;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/nq;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroidx/window/extensions/WindowExtensionsProvider;->getWindowExtensions()Landroidx/window/extensions/WindowExtensions;

    move-result-object v1

    invoke-interface {v1}, Landroidx/window/extensions/WindowExtensions;->getVendorApiLevel()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Landroidx/appcompat/view/menu/z8;->a:Landroidx/appcompat/view/menu/z8;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/z8;->a()Landroidx/appcompat/view/menu/e51;

    sget-object v1, Landroidx/appcompat/view/menu/e51;->m:Landroidx/appcompat/view/menu/e51;

    goto :goto_0

    :catch_1
    sget-object v1, Landroidx/appcompat/view/menu/z8;->a:Landroidx/appcompat/view/menu/z8;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/z8;->a()Landroidx/appcompat/view/menu/e51;

    sget-object v1, Landroidx/appcompat/view/menu/e51;->m:Landroidx/appcompat/view/menu/e51;

    :goto_0
    return v0
.end method
