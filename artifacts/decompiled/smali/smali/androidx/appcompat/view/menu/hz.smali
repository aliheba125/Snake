.class public abstract Landroidx/appcompat/view/menu/hz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lsun/misc/Unsafe;

.field public static final b:J

.field public static final c:J

.field public static final d:J

.field public static final e:J

.field public static final f:J

.field public static final g:J

.field public static final h:J

.field public static final i:J

.field public static final j:J

.field public static final k:J


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-class v0, Landroidx/appcompat/view/menu/cz$f;

    :try_start_0
    const-class v1, Lsun/misc/Unsafe;

    const-string v2, "getUnsafe"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;

    sput-object v1, Landroidx/appcompat/view/menu/hz;->a:Lsun/misc/Unsafe;

    new-instance v2, Landroidx/appcompat/view/menu/fh;

    invoke-direct {v2}, Landroidx/appcompat/view/menu/fh;-><init>()V

    const-class v4, Ljava/lang/reflect/Executable;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v6, "artMethod"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v1, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Landroidx/appcompat/view/menu/hz;->b:J

    const-string v6, "declaringClass"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v1, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Landroidx/appcompat/view/menu/hz;->c:J

    const-string v4, "artFieldOrMethod"

    invoke-virtual {v5, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v1, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Landroidx/appcompat/view/menu/hz;->d:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v4, "fields"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v1, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v6, v4

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :catch_1
    :try_start_2
    sget-object v1, Landroidx/appcompat/view/menu/hz;->a:Lsun/misc/Unsafe;

    const-string v4, "iFields"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v1, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    const-string v6, "sFields"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v1, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    :goto_0
    sput-wide v4, Landroidx/appcompat/view/menu/hz;->f:J

    sput-wide v6, Landroidx/appcompat/view/menu/hz;->g:J

    sget-object v1, Landroidx/appcompat/view/menu/hz;->a:Lsun/misc/Unsafe;

    const-string v6, "methods"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Landroidx/appcompat/view/menu/hz;->e:J

    const-string v2, "a"

    new-array v8, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v8, "b"

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v8, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v3, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v3

    sget-wide v9, Landroidx/appcompat/view/menu/hz;->d:J

    invoke-virtual {v1, v2, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-virtual {v1, v3, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-virtual {v1, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    sub-long/2addr v2, v11

    sput-wide v2, Landroidx/appcompat/view/menu/hz;->h:J

    sub-long/2addr v11, v6

    sub-long/2addr v11, v2

    sput-wide v11, Landroidx/appcompat/view/menu/hz;->i:J

    const-string v2, "i"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-string v3, "j"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v3, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectGetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectGetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    move-result-object v3

    invoke-virtual {v1, v2, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-virtual {v1, v3, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-virtual {v1, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    sub-long/2addr v2, v6

    sput-wide v2, Landroidx/appcompat/view/menu/hz;->j:J

    sub-long/2addr v6, v0

    sput-wide v6, Landroidx/appcompat/view/menu/hz;->k:J
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :goto_1
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static varargs a([Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/cz;->a:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {p0}, Landroidx/appcompat/view/menu/hz;->h([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs b(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 5

    invoke-static {p0}, Landroidx/appcompat/view/menu/hz;->d(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Executable;

    instance-of v1, v0, Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    array-length v3, p1

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_3

    aget-object v3, p1, v2

    aget-object v4, v1, v2

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    check-cast v0, Ljava/lang/reflect/Constructor;

    return-object v0

    :cond_4
    new-instance p0, Ljava/lang/NoSuchMethodException;

    const-string p1, "Cannot find matching constructor"

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs c(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5

    invoke-static {p0}, Landroidx/appcompat/view/menu/hz;->d(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Executable;

    invoke-virtual {v0}, Ljava/lang/reflect/Executable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/reflect/Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    array-length v3, p2

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_4

    aget-object v3, p2, v2

    aget-object v4, v1, v2

    if-eq v3, v4, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0

    :cond_5
    new-instance p0, Ljava/lang/NoSuchMethodException;

    const-string p1, "Cannot find matching method"

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/lang/Class;)Ljava/util/List;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-class v0, Landroidx/appcompat/view/menu/cz$f;

    const-string v1, "a"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Landroidx/appcompat/view/menu/hz;->a:Lsun/misc/Unsafe;

    sget-wide v3, Landroidx/appcompat/view/menu/hz;->e:J

    invoke-virtual {v1, p0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    const-wide/16 v3, 0x0

    cmp-long p0, v9, v3

    if-nez p0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v1, v9, v10}, Lsun/misc/Unsafe;->getInt(J)I

    move-result p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v2, p0, :cond_2

    int-to-long v3, v2

    sget-wide v5, Landroidx/appcompat/view/menu/hz;->h:J

    mul-long/2addr v3, v5

    add-long/2addr v3, v9

    sget-wide v5, Landroidx/appcompat/view/menu/hz;->i:J

    add-long v7, v3, v5

    sget-object v3, Landroidx/appcompat/view/menu/hz;->a:Lsun/misc/Unsafe;

    sget-wide v5, Landroidx/appcompat/view/menu/hz;->d:J

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    const-class v3, Ljava/lang/reflect/Executable;

    invoke-static {v3, v0}, Ljava/lang/invoke/MethodHandles;->reflectAs(Ljava/lang/Class;Ljava/lang/invoke/MethodHandle;)Ljava/lang/reflect/Member;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Executable;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Class;)Ljava/util/List;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-class v0, Landroidx/appcompat/view/menu/cz$f;

    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectGetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Landroidx/appcompat/view/menu/hz;->a:Lsun/misc/Unsafe;

    sget-wide v2, Landroidx/appcompat/view/menu/hz;->f:J

    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    const-wide/16 v2, 0x0

    cmp-long p0, v8, v2

    if-nez p0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v1, v8, v9}, Lsun/misc/Unsafe;->getInt(J)I

    move-result p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v10, v2

    :goto_0
    if-ge v10, p0, :cond_3

    int-to-long v2, v10

    sget-wide v4, Landroidx/appcompat/view/menu/hz;->j:J

    mul-long/2addr v2, v4

    add-long/2addr v2, v8

    sget-wide v4, Landroidx/appcompat/view/menu/hz;->k:J

    add-long v6, v2, v4

    sget-object v2, Landroidx/appcompat/view/menu/hz;->a:Lsun/misc/Unsafe;

    sget-wide v4, Landroidx/appcompat/view/menu/hz;->d:J

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    const-class v2, Ljava/lang/reflect/Field;

    invoke-static {v2, v0}, Ljava/lang/invoke/MethodHandles;->reflectAs(Ljava/lang/Class;Ljava/lang/invoke/MethodHandle;)Ljava/lang/reflect/Member;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/Class;)Ljava/util/List;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-class v0, Landroidx/appcompat/view/menu/cz$f;

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectGetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Landroidx/appcompat/view/menu/hz;->a:Lsun/misc/Unsafe;

    sget-wide v2, Landroidx/appcompat/view/menu/hz;->g:J

    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    const-wide/16 v2, 0x0

    cmp-long p0, v8, v2

    if-nez p0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v1, v8, v9}, Lsun/misc/Unsafe;->getInt(J)I

    move-result p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v10, v2

    :goto_0
    if-ge v10, p0, :cond_3

    int-to-long v2, v10

    sget-wide v4, Landroidx/appcompat/view/menu/hz;->j:J

    mul-long/2addr v2, v4

    add-long/2addr v2, v8

    sget-wide v4, Landroidx/appcompat/view/menu/hz;->k:J

    add-long v6, v2, v4

    sget-object v2, Landroidx/appcompat/view/menu/hz;->a:Lsun/misc/Unsafe;

    sget-wide v4, Landroidx/appcompat/view/menu/hz;->d:J

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    const-class v2, Ljava/lang/reflect/Field;

    invoke-static {v2, v0}, Ljava/lang/invoke/MethodHandles;->reflectAs(Ljava/lang/Class;Ljava/lang/invoke/MethodHandle;)Ljava/lang/reflect/Member;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs g(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "this object is not an instance of the given class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroidx/appcompat/view/menu/cz$d;

    const-string v6, "invoke"

    invoke-virtual {v4, v6, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v2, Landroidx/appcompat/view/menu/hz;->a:Lsun/misc/Unsafe;

    sget-wide v6, Landroidx/appcompat/view/menu/hz;->e:J

    move-object v4, p0

    invoke-virtual {v2, p0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    const-wide/16 v6, 0x0

    cmp-long v4, v13, v6

    const-string v6, "Cannot find matching method"

    if-eqz v4, :cond_4

    invoke-virtual {v2, v13, v14}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v2

    :goto_1
    if-ge v5, v2, :cond_3

    int-to-long v7, v5

    sget-wide v9, Landroidx/appcompat/view/menu/hz;->h:J

    mul-long/2addr v7, v9

    add-long/2addr v7, v13

    sget-wide v9, Landroidx/appcompat/view/menu/hz;->i:J

    add-long v11, v7, v9

    sget-object v7, Landroidx/appcompat/view/menu/hz;->a:Lsun/misc/Unsafe;

    sget-wide v9, Landroidx/appcompat/view/menu/hz;->b:J

    move-object v8, v3

    invoke-virtual/range {v7 .. v12}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v7, p2

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v1}, Landroidx/appcompat/view/menu/cz;->a([Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0, v6}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0, v6}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs h([Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Ldalvik/system/VMRuntime;

    const-string v2, "getRuntime"

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Landroidx/appcompat/view/menu/hz;->g(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Ldalvik/system/VMRuntime;

    const-string v3, "setHiddenApiExemptions"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v1, v3, p0}, Landroidx/appcompat/view/menu/hz;->g(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method
